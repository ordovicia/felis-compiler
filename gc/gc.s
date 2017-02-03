min_caml__gc:
# 32-33, 33-34
lui r2 33
ori r2 r2 4096
sub r27 r2 r25
# if r25 <= 0 then smaller heap now
blez r25 gc_smaller_heap
# gc_larger_heap
lui r3 34 # heap bound
ori r3 r3 4096
sub r3 r27 r4
sub r4 r1 r25
# if r25 < 0 need gc
# if >= 0 do not need gc
bgez r25 gc_notneed
lui r27 32
ori r27 r27 4096
j gc_doall

gc_smaller_heap:
lui r3 33 # heap bound
ori r3 r3 4096
sub r3 r27 r4
sub r4 r1 r25
# if r25 < 0 need gc
# if >= 0 do not need gc
bgez r25 gc_notneed
lui r27 33
ori r27 r27 4096
j gc_doall

gc_notneed:
jr r31

gc_doall:
# reg_sp = r30
# reg_hp = r27
addi r30 r1 0
# r1 <- reg_sp
addi r0 r2 0
# for r2 = 0 to reg_sp
gc_root_loop:
sub r1 r2 r25
beq r25 r0 gc_return
# check the type of mem[r2]
lw r2 r3 4
# if r3 = 1 then mem[r2] is a heap address
addi r3 r25 -1
beq r25 r0 gc_call_copyall
# otherwise go to next loop
gc_next_root_loop:
addi r2 r2 8
j gc_root_loop

gc_return:
jr r31

gc_call_copyall:
# r2 : stack address i
lw r2 r3 0
# r3 : stack contents, heap address mem[i]
lw r3 r4 0
# r4 : heap contents mem[mem[i]]
andi r4 r25 3
beq r25 r0 restore_copied_address
# call copyall
# sz = r4 + 1
addi r4 r5 1
# tmp : r4 <- reg_hp
addi r27 r4 0
# tmp2 : r3 = already mem[i]
# mem[i] <- reg_hp
sw r27 r2 0
# reg_hp += sz
add r27 r5 r27
# mem[tmp] <- mem[tmp2]
lw r3 r6 0
sw r6 r4 0
# mem[tmp2] <- tmp
sw r4 r3 0
# link and call copyall
sw r31 r30 0
addi r30 r30 4
jal gc_copyall
addi r30 r30 -4
lw r30 r31 0
j gc_next_root_loop

restore_copied_address:
# sw r3 r2 0
sw r4 r2 0
# sw r4 r3 0
j gc_next_root_loop

gc_copyall:
# r3 : from, r4 : to, r5 : sz
addi r0 r6 4
gc_copyall_loop:
# check type of mem[r3 + r6]
addi r6 r6 4
lwo r3 r6 r7
# r7 = 0 -> int, 1 -> adr, 2 -> float
beq r7 r0 gc_copy_int
addi r7 r7 -1
beq r7 r0 gc_copy_adr
addi r7 r7 -1
beq r7 r0 gc_copy_float

gc_copyall_nextloop:
addi r6 r6 8
sub r6 r5 r25
beq r25 r0 gc_copyall_return
j gc_copyall_loop

gc_copyall_return:
jr r31

gc_copy_int:
# from r3 + r6 to r4 + r6
lwo r3 r6 r7
swo r7 r4 r6
addi r6 r6 -4
lwo r3 r6 r7
swo r7 r4 r6
j gc_copyall_nextloop

gc_copy_float:
lwo r3 r6 r7
swo r7 r4 r6
addi r6 r6 -4
lwoc1 r3 r6 f31
swoc1 f31 r4 r6
j gc_copyall_nextloop

gc_copy_adr:
addi r6 r6 -4
lwo r3 r6 r7
# r7 <- mem[from + i]
# check if r7 is copied
# r8 <- mem[mem[from + i]]
lw r7 r8 0
andi r8 r25 3
# if r25 = 0 then this address is copied
beq r25 r0 gc_adr_copied
# address not copied call copyall
# new_from = mem[from + i]
# new_to = reg_hp
# sz = mem[mem[from + i]] + 1
# r3 : from, r4 : to, r5 : old_sz
# r6 : i, r7 : mem[from + i], r8 : mem[mem[from + i]]

# save variables
sw r3 r30 0
sw r4 r30 4
sw r5 r30 8
sw r6 r30 12

# sz : r5 <- mem[mem[from + i]] + 1
addi r8 r5 1
# mem[reg_hp] <- mem[mem[from + i]]
sw r8 r27 0
# mem[mem[from + i]] <- reg_hp
sw r27 r7 0
# new_to <- reg_hp
addi r27 r4 0
# reg_hp += sz
add r27 r5 r27
# set new_from
addi r7 r3 0

sw r31 r30 16
addi r30 r30 20
jal gc_copyall
addi r30 r30 -20
lw r30 r31 16
lw r30 r6 12
lw r30 r5 8
lw r30 r4 4
lw r30 r3 0
j gc_copyall_nextloop



## sw r8 r27 0
## swo r27 r4 r6
## addi r0 r21 1
## addi r6 r6 4
## swo r21 r4 r6
## addi r6 r6 -4
## sw r27 r7 0
# save variables and call copyall
## sw r3 r30 0
## sw r4 r30 4
## sw r5 r30 8
## sw r6 r30 12
# from r7 to reg_hp
# sz = r8 + 1
# update reg_hp
## addi r8 r5 1
## addi r7 r3 0
## addi r27 r4 0
## add r27 r5 r27
## sw r31 r30 16
## addi r30 r30 20
## jal gc_copyall # argument wrong
## addi r30 r30 -20
## lw r30 r31 16
## lw r30 r6 12
## lw r30 r5 8
## lw r30 r4 4
## lw r30 r3 0
## j gc_copyall_nextloop
# j gc_root_loop

gc_adr_copied:
addi r6 r6 4
lwo r3 r6 r7
swo r7 r4 r6
addi r6 r6 -4
lwo r3 r6 r7
lw r7 r8 0
swo r8 r4 r6
## swo r7 r4 r6
j gc_copyall_nextloop
