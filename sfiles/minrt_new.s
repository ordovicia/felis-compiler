xor.2742:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_tail_else.8386
	addi	r0 r1 0
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.8387
	addi	r0 r1 0
	jr	r31
beq_tail_else.8387:
	addi	r0 r1 1
	jr	r31
beq_tail_else.8386:
	mov	r1 r2
	jr	r31
sgn.2745:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.8388
	addi	r0 r1 0
	j	bfeq_nontail_cont.8389
bfeq_nontail_else.8388:
	addi	r0 r1 1
bfeq_nontail_cont.8389:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8390
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
beq_tail_else.8390:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8391
	addi	r0 r1 1
	j	bfle_nontail_cont.8392
bfle_nontail_else.8391:
	addi	r0 r1 0
bfle_nontail_cont.8392:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8393
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
beq_tail_else.8393:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
fneg_cond.2747:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8394
	jr	r31
beq_tail_else.8394:
	neg.s	f0 f0
	jr	r31
add_mod5.2750:
	add	r1 r2 r1
	addi	r0 r2 5
	sub	r2 r1 r25
	blez	r25 ble_tail_else.8395
	jr	r31
ble_tail_else.8395:
	addi	r0 r2 5
	sub	r1 r2 r1
	jr	r31
vecset.2753:
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r2 1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r0 r2 2
	sll	r2 r2 2
	swoc1	f2 r1 r2
	jr	r31
vecfill.2758:
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r2 1
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r2 2
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
vecbzero.2761:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	vecfill.2758
veccpy.2763:
	addi	r0 r3 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	sll	r3 r3 2
	swoc1	f0 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	sll	r3 r3 2
	swoc1	f0 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	sll	r3 r2 2
	swoc1	f0 r1 r2
	jr	r31
vecunit_sgn.2771:
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r1 r3 f0
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	mul.s	f0 f1 f0
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r1 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r1 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	min_caml_sqrt
	addi	r30 r30 -12
	lw	r30 r31 8
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.8399
	addi	r0 r1 0
	j	bfeq_nontail_cont.8400
bfeq_nontail_else.8399:
	addi	r0 r1 1
bfeq_nontail_cont.8400:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8401
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.8402
beq_else.8401:
	addi	r0 r1 0
	lw	r30 r2 4
	sub	r2 r1 r25
	beq	r25 r0 beq_else.8403
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f0
	j	beq_cont.8404
beq_else.8403:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f0
beq_cont.8404:
beq_cont.8402:
	addi	r0 r1 0
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 0
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f1
	sll	r1 r1 2
	swoc1	f1 r3 r1
	addi	r0 r1 1
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f1
	sll	r1 r1 2
	swoc1	f1 r3 r1
	addi	r0 r1 2
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f0
	sll	r1 r1 2
	swoc1	f0 r3 r1
	jr	r31
veciprod.2774:
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r1 r3 f0
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	addi	r0 r1 2
	sll	r1 r1 2
	lwoc1	r2 r1 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	jr	r31
veciprod2.2777:
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	mul.s	f3 f0 f0
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	mul.s	f3 f1 f1
	add.s	f0 f1 f0
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	jr	r31
vecaccum.2782:
	addi	r0 r3 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	sll	r3 r3 2
	swoc1	f1 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	sll	r3 r3 2
	swoc1	f1 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f0
	add.s	f1 f0 f0
	sll	r3 r2 2
	swoc1	f0 r1 r2
	jr	r31
vecadd.2786:
	addi	r0 r3 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r1 r4 f0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	add.s	f0 f1 f0
	sll	r3 r3 2
	swoc1	f0 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r1 r4 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	add.s	f0 f1 f0
	sll	r3 r3 2
	swoc1	f0 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r1 r4 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	add.s	f0 f1 f0
	sll	r3 r2 2
	swoc1	f0 r1 r2
	jr	r31
vecscale.2792:
	addi	r0 r2 0
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	mul.s	f1 f0 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r0 r2 1
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	mul.s	f1 f0 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r0 r2 2
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	mul.s	f1 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
vecaccumv.2795:
	addi	r0 r4 0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r4 2
	swoc1	f0 r1 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r4 2
	swoc1	f0 r1 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r2 2
	swoc1	f0 r1 r2
	jr	r31
o_texturetype.2799:
	lw	r1 r1 0
	jr	r31
o_form.2801:
	lw	r1 r1 4
	jr	r31
o_reflectiontype.2803:
	lw	r1 r1 8
	jr	r31
o_isinvert.2805:
	lw	r1 r1 24
	jr	r31
o_isrot.2807:
	lw	r1 r1 12
	jr	r31
o_param_a.2809:
	lw	r1 r1 16
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_param_b.2811:
	lw	r1 r1 16
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_param_c.2813:
	lw	r1 r1 16
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_param_abc.2815:
	lw	r1 r1 16
	jr	r31
o_param_x.2817:
	lw	r1 r1 20
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_param_y.2819:
	lw	r1 r1 20
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_param_z.2821:
	lw	r1 r1 20
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_diffuse.2823:
	lw	r1 r1 28
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_hilight.2825:
	lw	r1 r1 28
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_color_red.2827:
	lw	r1 r1 32
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_color_green.2829:
	lw	r1 r1 32
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_color_blue.2831:
	lw	r1 r1 32
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_param_r1.2833:
	lw	r1 r1 36
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_param_r2.2835:
	lw	r1 r1 36
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_param_r3.2837:
	lw	r1 r1 36
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_param_ctbl.2839:
	lw	r1 r1 40
	jr	r31
p_rgb.2841:
	lw	r1 r1 0
	jr	r31
p_intersection_points.2843:
	lw	r1 r1 4
	jr	r31
p_surface_ids.2845:
	lw	r1 r1 8
	jr	r31
p_calc_diffuse.2847:
	lw	r1 r1 12
	jr	r31
p_energy.2849:
	lw	r1 r1 16
	jr	r31
p_received_ray_20percent.2851:
	lw	r1 r1 20
	jr	r31
p_group_id.2853:
	lw	r1 r1 24
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	jr	r31
p_set_group_id.2855:
	lw	r1 r1 24
	addi	r0 r3 0
	sll	r3 r3 2
	swo	r2 r1 r3
	jr	r31
p_nvectors.2858:
	lw	r1 r1 28
	jr	r31
d_vec.2860:
	lw	r1 r1 0
	jr	r31
d_const.2862:
	lw	r1 r1 4
	jr	r31
r_surface_id.2864:
	lw	r1 r1 0
	jr	r31
r_dvec.2866:
	lw	r1 r1 4
	jr	r31
r_bright.2868:
	lwc1	r1 f0 8
	jr	r31
rad.2870:
	lui	r24 15502
	ori	r24 r24 64053
	mtc1	r24 f1
	mul.s	f0 f1 f0
	jr	r31
read_screen_settings.2872:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	min_caml_read_float
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r1 4
	sll	r1 r1 2
	lw	r30 r2 0
	swoc1	f0 r2 r1
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r2 1
	sw	r1 r30 8
	sw	r2 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_read_float
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r1 12
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 2
	sw	r1 r30 16
	sw	r2 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_read_float
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r1 20
	sll	r1 r1 2
	lw	r30 r2 16
	swoc1	f0 r2 r1
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_read_float
	addi	r30 r30 -28
	lw	r30 r31 24
	sw	r31 r30 24
	addi	r30 r30 28
	jal	rad.2870
	addi	r30 r30 -28
	lw	r30 r31 24
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_cos
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	swc1	f0 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -36
	lw	r30 r31 32
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_read_float
	addi	r30 r30 -40
	lw	r30 r31 36
	sw	r31 r30 36
	addi	r30 r30 40
	jal	rad.2870
	addi	r30 r30 -40
	lw	r30 r31 36
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	min_caml_cos
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 36
	swc1	f0 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 0
	lwc1	 r30 f1 28
	mul.s	f1 f0 f2
	lui	r24 17224
	ori	r24 r24 0
	mtc1	r24 f3
	mul.s	f2 f3 f2
	sll	r2 r2 2
	swoc1	f2 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 1
	lui	r24 49992
	ori	r24 r24 0
	mtc1	r24 f2
	lwc1	 r30 f3 32
	mul.s	f3 f2 f2
	sll	r2 r2 2
	swoc1	f2 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 2
	lwc1	 r30 f2 40
	mul.s	f1 f2 f4
	lui	r24 17224
	ori	r24 r24 0
	mtc1	r24 f5
	mul.s	f4 f5 f4
	sll	r2 r2 2
	swoc1	f4 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f2 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sll	r2 r2 2
	swoc1	f4 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 2
	neg.s	f0 f4
	sll	r2 r2 2
	swoc1	f4 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 0
	neg.s	f3 f4
	mul.s	f4 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 1
	neg.s	f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 2
	neg.s	f3 f0
	mul.s	f0 f2 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_viewpoint
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 0
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_viewpoint
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 1
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_viewpoint
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
read_light.2874:
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_read_int
	addi	r30 r30 -4
	lw	r30 r31 0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_read_float
	addi	r30 r30 -4
	lw	r30 r31 0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	rad.2870
	addi	r30 r30 -4
	lw	r30 r31 0
	swc1	f0 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_sin
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r30 r30 4
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -4
	addi	r0 r2 1
	neg.s	f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_read_float
	addi	r30 r30 -8
	lw	r30 r31 4
	sw	r31 r30 4
	addi	r30 r30 8
	jal	rad.2870
	addi	r30 r30 -8
	lw	r30 r31 4
	lwc1	 r30 f1 0
	swc1	f0 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov.s	f1 f0
	jal	min_caml_cos
	addi	r30 r30 -12
	lw	r30 r31 8
	lwc1	 r30 f1 4
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	lwc1	 r30 f1 8
	mul.s	f1 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	lwc1	 r30 f0 4
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_cos
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 2
	lwc1	 r30 f1 8
	mul.s	f1 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_beam
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	sw	r1 r30 12
	sw	r2 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_read_float
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r1 16
	sll	r1 r1 2
	lw	r30 r2 12
	swoc1	f0 r2 r1
	jr	r31
rotate_quadratic_matrix.2876:
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	min_caml_cos
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov.s	f1 f0
	jal	min_caml_cos
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f1 f0
	jal	min_caml_cos
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	lwc1	 r30 f2 16
	mul.s	f2 f1 f3
	lwc1	 r30 f4 20
	lwc1	 r30 f5 12
	mul.s	f5 f4 f6
	mul.s	f6 f1 f6
	lwc1	 r30 f7 8
	mul.s	f7 f0 f8
	sub.s	f6 f8 f6
	mul.s	f7 f4 f8
	mul.s	f8 f1 f8
	mul.s	f5 f0 f9
	add.s	f8 f9 f8
	mul.s	f2 f0 f9
	mul.s	f5 f4 f10
	mul.s	f10 f0 f10
	mul.s	f7 f1 f11
	add.s	f10 f11 f10
	mul.s	f7 f4 f11
	mul.s	f11 f0 f0
	mul.s	f5 f1 f1
	sub.s	f0 f1 f0
	neg.s	f4 f1
	mul.s	f5 f2 f4
	mul.s	f7 f2 f2
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f5
	addi	r0 r1 1
	sll	r1 r1 2
	lwoc1	r2 r1 f7
	addi	r0 r1 2
	sll	r1 r1 2
	lwoc1	r2 r1 f11
	addi	r0 r1 0
	mul.s	f3 f3 f12
	mul.s	f5 f12 f12
	mul.s	f9 f9 f13
	mul.s	f7 f13 f13
	add.s	f12 f13 f12
	mul.s	f1 f1 f13
	mul.s	f11 f13 f13
	add.s	f12 f13 f12
	sll	r1 r1 2
	swoc1	f12 r2 r1
	addi	r0 r1 1
	mul.s	f6 f6 f12
	mul.s	f5 f12 f12
	mul.s	f10 f10 f13
	mul.s	f7 f13 f13
	add.s	f12 f13 f12
	mul.s	f4 f4 f13
	mul.s	f11 f13 f13
	add.s	f12 f13 f12
	sll	r1 r1 2
	swoc1	f12 r2 r1
	addi	r0 r1 2
	mul.s	f8 f8 f12
	mul.s	f5 f12 f12
	mul.s	f0 f0 f13
	mul.s	f7 f13 f13
	add.s	f12 f13 f12
	mul.s	f2 f2 f13
	mul.s	f11 f13 f13
	add.s	f12 f13 f12
	sll	r1 r1 2
	swoc1	f12 r2 r1
	addi	r0 r1 0
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f12
	mul.s	f5 f6 f13
	mul.s	f13 f8 f13
	mul.s	f7 f10 f14
	mul.s	f14 f0 f14
	add.s	f13 f14 f13
	mul.s	f11 f4 f14
	mul.s	f14 f2 f14
	add.s	f13 f14 f13
	mul.s	f12 f13 f12
	sll	r1 r1 2
	lw	r30 r2 4
	swoc1	f12 r2 r1
	addi	r0 r1 1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f12
	mul.s	f5 f3 f13
	mul.s	f13 f8 f8
	mul.s	f7 f9 f13
	mul.s	f13 f0 f0
	add.s	f8 f0 f0
	mul.s	f11 f1 f8
	mul.s	f8 f2 f2
	add.s	f0 f2 f0
	mul.s	f12 f0 f0
	sll	r1 r1 2
	swoc1	f0 r2 r1
	addi	r0 r1 2
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f0
	mul.s	f5 f3 f2
	mul.s	f2 f6 f2
	mul.s	f7 f9 f3
	mul.s	f3 f10 f3
	add.s	f2 f3 f2
	mul.s	f11 f1 f1
	mul.s	f1 f4 f1
	add.s	f2 f1 f1
	mul.s	f0 f1 f0
	sll	r1 r1 2
	swoc1	f0 r2 r1
	jr	r31
read_nth_object.2879:
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_read_int
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8414
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	min_caml_read_int
	addi	r30 r30 -12
	lw	r30 r31 8
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_read_int
	addi	r30 r30 -16
	lw	r30 r31 12
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_read_int
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sw	r1 r30 20
	sw	r2 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_read_float
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 24
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
	addi	r0 r1 1
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	min_caml_read_float
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r1 28
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
	addi	r0 r1 2
	sw	r1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_read_float
	addi	r30 r30 -40
	lw	r30 r31 36
	lw	r30 r1 32
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_create_float_array
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 0
	sw	r1 r30 36
	sw	r2 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_read_float
	addi	r30 r30 -48
	lw	r30 r31 44
	lw	r30 r1 40
	sll	r1 r1 2
	lw	r30 r2 36
	swoc1	f0 r2 r1
	addi	r0 r1 1
	sw	r1 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	jal	min_caml_read_float
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r1 44
	sll	r1 r1 2
	lw	r30 r2 36
	swoc1	f0 r2 r1
	addi	r0 r1 2
	sw	r1 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	min_caml_read_float
	addi	r30 r30 -56
	lw	r30 r31 52
	lw	r30 r1 48
	sll	r1 r1 2
	lw	r30 r2 36
	swoc1	f0 r2 r1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	swc1	f0 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	jal	min_caml_read_float
	addi	r30 r30 -60
	lw	r30 r31 56
	lwc1	 r30 f1 52
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8415
	addi	r0 r1 1
	j	bfle_nontail_cont.8416
bfle_nontail_else.8415:
	addi	r0 r1 0
bfle_nontail_cont.8416:
	addi	r0 r2 2
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r0 r2 0
	sw	r1 r30 60
	sw	r2 r30 64
	sw	r31 r30 68
	addi	r30 r30 72
	jal	min_caml_read_float
	addi	r30 r30 -72
	lw	r30 r31 68
	lw	r30 r1 64
	sll	r1 r1 2
	lw	r30 r2 60
	swoc1	f0 r2 r1
	addi	r0 r1 1
	sw	r1 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	jal	min_caml_read_float
	addi	r30 r30 -76
	lw	r30 r31 72
	lw	r30 r1 68
	sll	r1 r1 2
	lw	r30 r2 60
	swoc1	f0 r2 r1
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r31 r30 72
	addi	r30 r30 76
	jal	min_caml_create_float_array
	addi	r30 r30 -76
	lw	r30 r31 72
	addi	r0 r2 0
	sw	r1 r30 72
	sw	r2 r30 76
	sw	r31 r30 80
	addi	r30 r30 84
	jal	min_caml_read_float
	addi	r30 r30 -84
	lw	r30 r31 80
	lw	r30 r1 76
	sll	r1 r1 2
	lw	r30 r2 72
	swoc1	f0 r2 r1
	addi	r0 r1 1
	sw	r1 r30 80
	sw	r31 r30 84
	addi	r30 r30 88
	jal	min_caml_read_float
	addi	r30 r30 -88
	lw	r30 r31 84
	lw	r30 r1 80
	sll	r1 r1 2
	lw	r30 r2 72
	swoc1	f0 r2 r1
	addi	r0 r1 2
	sw	r1 r30 84
	sw	r31 r30 88
	addi	r30 r30 92
	jal	min_caml_read_float
	addi	r30 r30 -92
	lw	r30 r31 88
	lw	r30 r1 84
	sll	r1 r1 2
	lw	r30 r2 72
	swoc1	f0 r2 r1
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r31 r30 88
	addi	r30 r30 92
	jal	min_caml_create_float_array
	addi	r30 r30 -92
	lw	r30 r31 88
	addi	r0 r2 0
	lw	r30 r3 16
	sw	r1 r30 88
	sub	r3 r2 r25
	beq	r25 r0 beq_else.8417
	addi	r0 r2 0
	sw	r2 r30 92
	sw	r31 r30 96
	addi	r30 r30 100
	jal	min_caml_read_float
	addi	r30 r30 -100
	lw	r30 r31 96
	sw	r31 r30 96
	addi	r30 r30 100
	jal	rad.2870
	addi	r30 r30 -100
	lw	r30 r31 96
	lw	r30 r1 92
	sll	r1 r1 2
	lw	r30 r2 88
	swoc1	f0 r2 r1
	addi	r0 r1 1
	sw	r1 r30 96
	sw	r31 r30 100
	addi	r30 r30 104
	jal	min_caml_read_float
	addi	r30 r30 -104
	lw	r30 r31 100
	sw	r31 r30 100
	addi	r30 r30 104
	jal	rad.2870
	addi	r30 r30 -104
	lw	r30 r31 100
	lw	r30 r1 96
	sll	r1 r1 2
	lw	r30 r2 88
	swoc1	f0 r2 r1
	addi	r0 r1 2
	sw	r1 r30 100
	sw	r31 r30 104
	addi	r30 r30 108
	jal	min_caml_read_float
	addi	r30 r30 -108
	lw	r30 r31 104
	sw	r31 r30 104
	addi	r30 r30 108
	jal	rad.2870
	addi	r30 r30 -108
	lw	r30 r31 104
	lw	r30 r1 100
	sll	r1 r1 2
	lw	r30 r2 88
	swoc1	f0 r2 r1
	j	beq_cont.8418
beq_else.8417:
beq_cont.8418:
	addi	r0 r1 2
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.8419
	lw	r30 r1 56
	j	beq_cont.8420
beq_else.8419:
	addi	r0 r1 1
beq_cont.8420:
	addi	r0 r3 4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 104
	sw	r31 r30 108
	addi	r30 r30 112
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -112
	lw	r30 r31 108
	mov	r2 r27
	addi	r27 r27 48
	sw	r1 r2 40
	lw	r30 r1 88
	sw	r1 r2 36
	lw	r30 r3 72
	sw	r3 r2 32
	lw	r30 r3 60
	sw	r3 r2 28
	lw	r30 r3 104
	sw	r3 r2 24
	lw	r30 r3 36
	sw	r3 r2 20
	lw	r30 r3 20
	sw	r3 r2 16
	lw	r30 r4 16
	sw	r4 r2 12
	lw	r30 r5 12
	sw	r5 r2 8
	lw	r30 r5 8
	sw	r5 r2 4
	lw	r30 r6 4
	sw	r6 r2 0
	addi	r30 r30 108
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -108
	lw	r30 r7 0
	sll	r7 r7 2
	swo	r2 r6 r7
	addi	r0 r2 3
	sub	r5 r2 r25
	beq	r25 r0 beq_else.8421
	addi	r0 r2 2
	sub	r5 r2 r25
	beq	r25 r0 beq_else.8423
	j	beq_cont.8424
beq_else.8423:
	addi	r0 r2 0
	lw	r30 r5 56
	sub	r5 r2 r25
	beq	r25 r0 beq_else.8425
	addi	r0 r2 0
	j	beq_cont.8426
beq_else.8425:
	addi	r0 r2 1
beq_cont.8426:
	sw	r31 r30 108
	addi	r30 r30 112
	mov	r1 r3
	jal	vecunit_sgn.2771
	addi	r30 r30 -112
	lw	r30 r31 108
beq_cont.8424:
	j	beq_cont.8422
beq_else.8421:
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r3 r2 f0
	addi	r0 r2 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.8427
	addi	r0 r5 0
	j	bfeq_nontail_cont.8428
bfeq_nontail_else.8427:
	addi	r0 r5 1
bfeq_nontail_cont.8428:
	addi	r0 r6 0
	sw	r2 r30 108
	sub	r5 r6 r25
	beq	r25 r0 beq_else.8429
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.8430
beq_else.8429:
	swc1	f0 r30 112
	sw	r31 r30 116
	addi	r30 r30 120
	jal	sgn.2745
	addi	r30 r30 -120
	lw	r30 r31 116
	lwc1	 r30 f1 112
	mul.s	f1 f1 f1
	div.s	f0 f1 f0
beq_cont.8430:
	lw	r30 r1 108
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
	addi	r0 r1 1
	sll	r1 r1 2
	lwoc1	r2 r1 f0
	addi	r0 r1 1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.8431
	addi	r0 r3 0
	j	bfeq_nontail_cont.8432
bfeq_nontail_else.8431:
	addi	r0 r3 1
bfeq_nontail_cont.8432:
	addi	r0 r4 0
	sw	r1 r30 116
	sub	r3 r4 r25
	beq	r25 r0 beq_else.8433
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.8434
beq_else.8433:
	swc1	f0 r30 120
	sw	r31 r30 124
	addi	r30 r30 128
	jal	sgn.2745
	addi	r30 r30 -128
	lw	r30 r31 124
	lwc1	 r30 f1 120
	mul.s	f1 f1 f1
	div.s	f0 f1 f0
beq_cont.8434:
	lw	r30 r1 116
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
	addi	r0 r1 2
	sll	r1 r1 2
	lwoc1	r2 r1 f0
	addi	r0 r1 2
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.8435
	addi	r0 r3 0
	j	bfeq_nontail_cont.8436
bfeq_nontail_else.8435:
	addi	r0 r3 1
bfeq_nontail_cont.8436:
	addi	r0 r4 0
	sw	r1 r30 124
	sub	r3 r4 r25
	beq	r25 r0 beq_else.8437
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.8438
beq_else.8437:
	swc1	f0 r30 128
	sw	r31 r30 132
	addi	r30 r30 136
	jal	sgn.2745
	addi	r30 r30 -136
	lw	r30 r31 132
	lwc1	 r30 f1 128
	mul.s	f1 f1 f1
	div.s	f0 f1 f0
beq_cont.8438:
	lw	r30 r1 124
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
beq_cont.8422:
	addi	r0 r1 0
	lw	r30 r2 16
	sub	r2 r1 r25
	beq	r25 r0 beq_else.8439
	lw	r30 r1 20
	lw	r30 r2 88
	sw	r31 r30 132
	addi	r30 r30 136
	jal	rotate_quadratic_matrix.2876
	addi	r30 r30 -136
	lw	r30 r31 132
	j	beq_cont.8440
beq_else.8439:
beq_cont.8440:
	addi	r0 r1 1
	jr	r31
beq_tail_else.8414:
	addi	r0 r1 0
	jr	r31
read_object.2881:
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.8441
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	read_nth_object.2879
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8442
	addi	r0 r1 1
	lw	r30 r2 0
	add	r2 r1 r1
	j	read_object.2881
beq_tail_else.8442:
	addi	r30 r30 4
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -4
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 0
	swo	r3 r1 r2
	jr	r31
ble_tail_else.8441:
	jr	r31
read_all_object.2883:
	addi	r0 r1 0
	j	read_object.2881
read_net_item.2885:
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_read_int
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8445
	addi	r0 r2 1
	lw	r30 r3 0
	add	r3 r2 r2
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	swo	r3 r1 r2
	jr	r31
beq_tail_else.8445:
	addi	r0 r1 1
	lw	r30 r2 0
	add	r2 r1 r1
	addi	r0 r2 -1
	j	min_caml_create_array
read_or_network.2887:
	addi	r0 r2 0
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -8
	lw	r30 r31 4
	mov	r2 r1
	addi	r0 r1 0
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_tail_else.8446
	addi	r0 r1 1
	lw	r30 r3 0
	add	r3 r1 r1
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	read_or_network.2887
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	swo	r3 r1 r2
	jr	r31
beq_tail_else.8446:
	addi	r0 r1 1
	lw	r30 r3 0
	add	r3 r1 r1
	j	min_caml_create_array
read_and_network.2889:
	addi	r0 r2 0
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.8447
	addi	r30 r30 4
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -4
	lw	r30 r3 0
	sll	r3 r4 2
	swo	r1 r2 r4
	addi	r0 r1 1
	add	r3 r1 r1
	j	read_and_network.2889
beq_tail_else.8447:
	jr	r31
read_parameter.2891:
	sw	r31 r30 0
	addi	r30 r30 4
	jal	read_screen_settings.2872
	addi	r30 r30 -4
	lw	r30 r31 0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	read_light.2874
	addi	r30 r30 -4
	lw	r30 r31 0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	read_all_object.2883
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	read_and_network.2889
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	addi	r0 r3 0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	read_or_network.2887
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r2 4
	sll	r2 r2 2
	lw	r30 r3 0
	swo	r1 r3 r2
	jr	r31
solver_rect_surface.2893:
	sll	r3 r6 2
	lwoc1	r2 r6 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.8450
	addi	r0 r6 0
	j	bfeq_nontail_cont.8451
bfeq_nontail_else.8450:
	addi	r0 r6 1
bfeq_nontail_cont.8451:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_tail_else.8452
	addi	r0 r1 0
	jr	r31
beq_tail_else.8452:
	swc1	f2 r30 0
	sw	r5 r30 4
	swc1	f1 r30 8
	sw	r4 r30 12
	swc1	f0 r30 16
	sw	r2 r30 20
	sw	r3 r30 24
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	o_param_abc.2815
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r2 28
	sw	r1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r1 r2
	jal	o_isinvert.2805
	addi	r30 r30 -40
	lw	r30 r31 36
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	lw	r30 r2 24
	sll	r2 r3 2
	lw	r30 r4 20
	lwoc1	r4 r3 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8453
	addi	r0 r3 1
	j	bfle_nontail_cont.8454
bfle_nontail_else.8453:
	addi	r0 r3 0
bfle_nontail_cont.8454:
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r2 r3
	jal	xor.2742
	addi	r30 r30 -40
	lw	r30 r31 36
	lw	r30 r2 24
	sll	r2 r3 2
	lw	r30 r4 32
	lwoc1	r4 r3 f0
	sw	r31 r30 36
	addi	r30 r30 40
	jal	fneg_cond.2747
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 16
	sub.s	f0 f1 f0
	lw	r30 r1 24
	sll	r1 r1 2
	lw	r30 r2 20
	lwoc1	r2 r1 f1
	div.s	f0 f1 f0
	lw	r30 r1 12
	sll	r1 r3 2
	lw	r30 r4 32
	lwoc1	r4 r3 f1
	sll	r1 r1 2
	lwoc1	r2 r1 f2
	mul.s	f0 f2 f2
	lwc1	 r30 f3 8
	add.s	f2 f3 f2
	abs.s	f2 f2
	sub.s	f1 f2 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8455
	addi	r0 r1 1
	j	bfle_nontail_cont.8456
bfle_nontail_else.8455:
	addi	r0 r1 0
bfle_nontail_cont.8456:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_tail_else.8457
	lw	r30 r1 4
	sll	r1 r3 2
	lwoc1	r4 r3 f1
	sll	r1 r1 2
	lwoc1	r2 r1 f2
	mul.s	f0 f2 f2
	lwc1	 r30 f3 0
	add.s	f2 f3 f2
	abs.s	f2 f2
	sub.s	f1 f2 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8458
	addi	r0 r1 1
	j	bfle_nontail_cont.8459
bfle_nontail_else.8458:
	addi	r0 r1 0
bfle_nontail_cont.8459:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8460
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r1 1
	jr	r31
beq_tail_else.8460:
	addi	r0 r1 0
	jr	r31
beq_tail_else.8457:
	addi	r0 r1 0
	jr	r31
solver_rect.2902:
	addi	r0 r3 0
	addi	r0 r4 1
	addi	r0 r5 2
	swc1	f0 r30 0
	swc1	f2 r30 4
	swc1	f1 r30 8
	sw	r2 r30 12
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	solver_rect_surface.2893
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8461
	addi	r0 r1 1
	jr	r31
beq_tail_else.8461:
	addi	r0 r3 1
	addi	r0 r4 2
	addi	r0 r5 0
	lwc1	 r30 f0 8
	lwc1	 r30 f1 4
	lwc1	 r30 f2 0
	lw	r30 r1 16
	lw	r30 r2 12
	sw	r31 r30 20
	addi	r30 r30 24
	jal	solver_rect_surface.2893
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8462
	addi	r0 r1 2
	jr	r31
beq_tail_else.8462:
	addi	r0 r3 2
	addi	r0 r4 0
	addi	r0 r5 1
	lwc1	 r30 f0 4
	lwc1	 r30 f1 0
	lwc1	 r30 f2 8
	lw	r30 r1 16
	lw	r30 r2 12
	sw	r31 r30 20
	addi	r30 r30 24
	jal	solver_rect_surface.2893
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8463
	addi	r0 r1 3
	jr	r31
beq_tail_else.8463:
	addi	r0 r1 0
	jr	r31
solver_surface.2908:
	swc1	f2 r30 0
	swc1	f1 r30 4
	swc1	f0 r30 8
	sw	r2 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	o_param_abc.2815
	addi	r30 r30 -20
	lw	r30 r31 16
	mov	r2 r1
	lw	r30 r1 12
	sw	r2 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	veciprod.2774
	addi	r30 r30 -24
	lw	r30 r31 20
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8464
	addi	r0 r1 1
	j	bfle_nontail_cont.8465
bfle_nontail_else.8464:
	addi	r0 r1 0
bfle_nontail_cont.8465:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8466
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r2 0
	lwc1	 r30 f1 8
	lwc1	 r30 f2 4
	lwc1	 r30 f3 0
	lw	r30 r3 16
	sw	r1 r30 20
	sw	r2 r30 24
	swc1	f0 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r3
	mov.s	f1 f0
	mov.s	f2 f1
	mov.s	f3 f2
	jal	veciprod2.2777
	addi	r30 r30 -36
	lw	r30 r31 32
	neg.s	f0 f0
	lwc1	 r30 f1 28
	div.s	f0 f1 f0
	lw	r30 r1 24
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
	addi	r0 r1 1
	jr	r31
beq_tail_else.8466:
	addi	r0 r1 0
	jr	r31
quadratic.2914:
	mul.s	f0 f0 f3
	swc1	f0 r30 0
	swc1	f2 r30 4
	sw	r1 r30 8
	swc1	f1 r30 12
	swc1	f3 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	o_param_a.2809
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f1 16
	mul.s	f1 f0 f0
	lwc1	 r30 f1 12
	mul.s	f1 f1 f2
	lw	r30 r1 8
	swc1	f0 r30 20
	swc1	f2 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	o_param_b.2811
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	mul.s	f1 f0 f0
	lwc1	 r30 f1 20
	add.s	f1 f0 f0
	lwc1	 r30 f1 4
	mul.s	f1 f1 f2
	lw	r30 r1 8
	swc1	f0 r30 28
	swc1	f2 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	o_param_c.2813
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 32
	mul.s	f1 f0 f0
	lwc1	 r30 f1 28
	add.s	f1 f0 f0
	lw	r30 r1 8
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	o_isrot.2807
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8467
	lwc1	 r30 f0 4
	lwc1	 r30 f1 12
	mul.s	f1 f0 f2
	lw	r30 r1 8
	swc1	f2 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	o_param_r1.2833
	addi	r30 r30 -48
	lw	r30 r31 44
	lwc1	 r30 f1 40
	mul.s	f1 f0 f0
	lwc1	 r30 f1 36
	add.s	f1 f0 f0
	lwc1	 r30 f1 0
	lwc1	 r30 f2 4
	mul.s	f2 f1 f2
	lw	r30 r1 8
	swc1	f0 r30 44
	swc1	f2 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	o_param_r2.2835
	addi	r30 r30 -56
	lw	r30 r31 52
	lwc1	 r30 f1 48
	mul.s	f1 f0 f0
	lwc1	 r30 f1 44
	add.s	f1 f0 f0
	lwc1	 r30 f1 12
	lwc1	 r30 f2 0
	mul.s	f2 f1 f1
	lw	r30 r1 8
	swc1	f0 r30 52
	swc1	f1 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	jal	o_param_r3.2837
	addi	r30 r30 -64
	lw	r30 r31 60
	lwc1	 r30 f1 56
	mul.s	f1 f0 f0
	lwc1	 r30 f1 52
	add.s	f1 f0 f0
	jr	r31
beq_tail_else.8467:
	lwc1	 r30 f0 36
	jr	r31
bilinear.2919:
	mul.s	f0 f3 f6
	swc1	f3 r30 0
	swc1	f0 r30 4
	swc1	f5 r30 8
	swc1	f2 r30 12
	sw	r1 r30 16
	swc1	f4 r30 20
	swc1	f1 r30 24
	swc1	f6 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	o_param_a.2809
	addi	r30 r30 -36
	lw	r30 r31 32
	lwc1	 r30 f1 28
	mul.s	f1 f0 f0
	lwc1	 r30 f1 20
	lwc1	 r30 f2 24
	mul.s	f2 f1 f3
	lw	r30 r1 16
	swc1	f0 r30 32
	swc1	f3 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	o_param_b.2811
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 36
	mul.s	f1 f0 f0
	lwc1	 r30 f1 32
	add.s	f1 f0 f0
	lwc1	 r30 f1 8
	lwc1	 r30 f2 12
	mul.s	f2 f1 f3
	lw	r30 r1 16
	swc1	f0 r30 40
	swc1	f3 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	jal	o_param_c.2813
	addi	r30 r30 -52
	lw	r30 r31 48
	lwc1	 r30 f1 44
	mul.s	f1 f0 f0
	lwc1	 r30 f1 40
	add.s	f1 f0 f0
	lw	r30 r1 16
	swc1	f0 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	o_isrot.2807
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8468
	lwc1	 r30 f0 20
	lwc1	 r30 f1 12
	mul.s	f1 f0 f2
	lwc1	 r30 f3 8
	lwc1	 r30 f4 24
	mul.s	f4 f3 f5
	add.s	f2 f5 f2
	lw	r30 r1 16
	swc1	f2 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	jal	o_param_r1.2833
	addi	r30 r30 -60
	lw	r30 r31 56
	lwc1	 r30 f1 52
	mul.s	f1 f0 f0
	lwc1	 r30 f1 8
	lwc1	 r30 f2 4
	mul.s	f2 f1 f1
	lwc1	 r30 f3 0
	lwc1	 r30 f4 12
	mul.s	f4 f3 f4
	add.s	f1 f4 f1
	lw	r30 r1 16
	swc1	f0 r30 56
	swc1	f1 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	jal	o_param_r2.2835
	addi	r30 r30 -68
	lw	r30 r31 64
	lwc1	 r30 f1 60
	mul.s	f1 f0 f0
	lwc1	 r30 f1 56
	add.s	f1 f0 f0
	lwc1	 r30 f1 20
	lwc1	 r30 f2 4
	mul.s	f2 f1 f1
	lwc1	 r30 f2 0
	lwc1	 r30 f3 24
	mul.s	f3 f2 f2
	add.s	f1 f2 f1
	lw	r30 r1 16
	swc1	f0 r30 64
	swc1	f1 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	jal	o_param_r3.2837
	addi	r30 r30 -76
	lw	r30 r31 72
	lwc1	 r30 f1 68
	mul.s	f1 f0 f0
	lwc1	 r30 f1 64
	add.s	f1 f0 f0
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lwc1	 r30 f1 48
	add.s	f1 f0 f0
	jr	r31
beq_tail_else.8468:
	lwc1	 r30 f0 48
	jr	r31
solver_second.2927:
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f3
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f5
	swc1	f2 r30 0
	swc1	f1 r30 4
	swc1	f0 r30 8
	sw	r1 r30 12
	sw	r2 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f5 f2
	mov.s	f4 f1
	mov.s	f3 f0
	jal	quadratic.2914
	addi	r30 r30 -24
	lw	r30 r31 20
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.8469
	addi	r0 r1 0
	j	bfeq_nontail_cont.8470
bfeq_nontail_else.8469:
	addi	r0 r1 1
bfeq_nontail_cont.8470:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8471
	addi	r0 r1 0
	jr	r31
beq_tail_else.8471:
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 16
	lwoc1	r2 r1 f1
	addi	r0 r1 1
	sll	r1 r1 2
	lwoc1	r2 r1 f2
	addi	r0 r1 2
	sll	r1 r1 2
	lwoc1	r2 r1 f3
	lwc1	 r30 f4 8
	lwc1	 r30 f5 4
	lwc1	 r30 f6 0
	lw	r30 r1 12
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f1 f0
	mov.s	f2 f1
	mov.s	f3 f2
	mov.s	f4 f3
	mov.s	f5 f4
	mov.s	f6 f5
	jal	bilinear.2919
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 8
	lwc1	 r30 f2 4
	lwc1	 r30 f3 0
	lw	r30 r1 12
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov.s	f1 f0
	mov.s	f2 f1
	mov.s	f3 f2
	jal	quadratic.2914
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 12
	swc1	f0 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	o_form.2801
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 3
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8472
	lwc1	 r30 f0 28
	j	beq_cont.8473
beq_else.8472:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 28
	sub.s	f1 f0 f0
beq_cont.8473:
	lwc1	 r30 f1 24
	mul.s	f1 f1 f2
	lwc1	 r30 f3 20
	mul.s	f3 f0 f0
	sub.s	f2 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8474
	addi	r0 r1 1
	j	bfle_nontail_cont.8475
bfle_nontail_else.8474:
	addi	r0 r1 0
bfle_nontail_cont.8475:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8476
	sw	r31 r30 32
	addi	r30 r30 36
	jal	min_caml_sqrt
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r1 12
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	o_isinvert.2805
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8477
	lwc1	 r30 f0 32
	j	beq_cont.8478
beq_else.8477:
	lwc1	 r30 f0 32
	neg.s	f0 f0
beq_cont.8478:
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 0
	lwc1	 r30 f1 24
	sub.s	f0 f1 f0
	lwc1	 r30 f1 20
	div.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r1 1
	jr	r31
beq_tail_else.8476:
	addi	r0 r1 0
	jr	r31
solver.2933:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r1 r1 2
	lwo	r4 r1 r1
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r3 r30 8
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	o_param_x.2817
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	sub.s	f1 f0 f0
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 8
	lwoc1	r2 r1 f1
	lw	r30 r1 4
	swc1	f0 r30 16
	swc1	f1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	o_param_y.2819
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 20
	sub.s	f1 f0 f0
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 8
	lwoc1	r2 r1 f1
	lw	r30 r1 4
	swc1	f0 r30 24
	swc1	f1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	o_param_z.2821
	addi	r30 r30 -36
	lw	r30 r31 32
	lwc1	 r30 f1 28
	sub.s	f1 f0 f0
	lw	r30 r1 4
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	o_form.2801
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 1
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8479
	addi	r0 r2 2
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8480
	lwc1	 r30 f0 16
	lwc1	 r30 f1 24
	lwc1	 r30 f2 32
	lw	r30 r1 4
	lw	r30 r2 0
	j	solver_second.2927
beq_tail_else.8480:
	lwc1	 r30 f0 16
	lwc1	 r30 f1 24
	lwc1	 r30 f2 32
	lw	r30 r1 4
	lw	r30 r2 0
	j	solver_surface.2908
beq_tail_else.8479:
	lwc1	 r30 f0 16
	lwc1	 r30 f1 24
	lwc1	 r30 f2 32
	lw	r30 r1 4
	lw	r30 r2 0
	j	solver_rect.2902
solver_rect_fast.2937:
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f3
	sub.s	f3 f0 f3
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f4
	mul.s	f3 f4 f3
	swc1	f0 r30 0
	sw	r3 r30 4
	swc1	f2 r30 8
	sw	r1 r30 12
	swc1	f1 r30 16
	swc1	f3 r30 20
	sw	r2 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	o_param_b.2811
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 24
	lwoc1	r2 r1 f1
	lwc1	 r30 f2 20
	mul.s	f2 f1 f1
	lwc1	 r30 f3 16
	add.s	f1 f3 f1
	abs.s	f1 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8481
	addi	r0 r1 1
	j	bfle_nontail_cont.8482
bfle_nontail_else.8481:
	addi	r0 r1 0
bfle_nontail_cont.8482:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.8483
	lw	r30 r1 12
	sw	r31 r30 28
	addi	r30 r30 32
	jal	o_param_c.2813
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 24
	lwoc1	r2 r1 f1
	lwc1	 r30 f2 20
	mul.s	f2 f1 f1
	lwc1	 r30 f3 8
	add.s	f1 f3 f1
	abs.s	f1 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8485
	addi	r0 r1 1
	j	bfle_nontail_cont.8486
bfle_nontail_else.8485:
	addi	r0 r1 0
bfle_nontail_cont.8486:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.8487
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r3 4
	lwoc1	r3 r1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.8489
	addi	r0 r1 0
	j	bfeq_nontail_cont.8490
bfeq_nontail_else.8489:
	addi	r0 r1 1
bfeq_nontail_cont.8490:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.8491
	addi	r0 r1 0
	j	beq_cont.8492
beq_else.8491:
	addi	r0 r1 1
beq_cont.8492:
	j	beq_cont.8488
beq_else.8487:
	addi	r0 r1 0
beq_cont.8488:
	j	beq_cont.8484
beq_else.8483:
	addi	r0 r1 0
beq_cont.8484:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_tail_else.8493
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f2 r1 r2
	addi	r0 r1 1
	jr	r31
beq_tail_else.8493:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r3 4
	lwoc1	r3 r1 f0
	lwc1	 r30 f1 16
	sub.s	f0 f1 f0
	addi	r0 r1 3
	sll	r1 r1 2
	lwoc1	r3 r1 f2
	mul.s	f0 f2 f0
	lw	r30 r1 12
	swc1	f0 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	o_param_a.2809
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 24
	lwoc1	r2 r1 f1
	lwc1	 r30 f2 28
	mul.s	f2 f1 f1
	lwc1	 r30 f3 0
	add.s	f1 f3 f1
	abs.s	f1 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8494
	addi	r0 r1 1
	j	bfle_nontail_cont.8495
bfle_nontail_else.8494:
	addi	r0 r1 0
bfle_nontail_cont.8495:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.8496
	lw	r30 r1 12
	sw	r31 r30 32
	addi	r30 r30 36
	jal	o_param_c.2813
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 24
	lwoc1	r2 r1 f1
	lwc1	 r30 f2 28
	mul.s	f2 f1 f1
	lwc1	 r30 f3 8
	add.s	f1 f3 f1
	abs.s	f1 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8498
	addi	r0 r1 1
	j	bfle_nontail_cont.8499
bfle_nontail_else.8498:
	addi	r0 r1 0
bfle_nontail_cont.8499:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.8500
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r3 4
	lwoc1	r3 r1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.8502
	addi	r0 r1 0
	j	bfeq_nontail_cont.8503
bfeq_nontail_else.8502:
	addi	r0 r1 1
bfeq_nontail_cont.8503:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.8504
	addi	r0 r1 0
	j	beq_cont.8505
beq_else.8504:
	addi	r0 r1 1
beq_cont.8505:
	j	beq_cont.8501
beq_else.8500:
	addi	r0 r1 0
beq_cont.8501:
	j	beq_cont.8497
beq_else.8496:
	addi	r0 r1 0
beq_cont.8497:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_tail_else.8506
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f2 r1 r2
	addi	r0 r1 2
	jr	r31
beq_tail_else.8506:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r3 4
	lwoc1	r3 r1 f0
	lwc1	 r30 f1 8
	sub.s	f0 f1 f0
	addi	r0 r1 5
	sll	r1 r1 2
	lwoc1	r3 r1 f1
	mul.s	f0 f1 f0
	lw	r30 r1 12
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	o_param_a.2809
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 24
	lwoc1	r2 r1 f1
	lwc1	 r30 f2 32
	mul.s	f2 f1 f1
	lwc1	 r30 f3 0
	add.s	f1 f3 f1
	abs.s	f1 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8507
	addi	r0 r1 1
	j	bfle_nontail_cont.8508
bfle_nontail_else.8507:
	addi	r0 r1 0
bfle_nontail_cont.8508:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.8509
	lw	r30 r1 12
	sw	r31 r30 36
	addi	r30 r30 40
	jal	o_param_b.2811
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 24
	lwoc1	r2 r1 f1
	lwc1	 r30 f2 32
	mul.s	f2 f1 f1
	lwc1	 r30 f3 16
	add.s	f1 f3 f1
	abs.s	f1 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8511
	addi	r0 r1 1
	j	bfle_nontail_cont.8512
bfle_nontail_else.8511:
	addi	r0 r1 0
bfle_nontail_cont.8512:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8513
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.8515
	addi	r0 r1 0
	j	bfeq_nontail_cont.8516
bfeq_nontail_else.8515:
	addi	r0 r1 1
bfeq_nontail_cont.8516:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8517
	addi	r0 r1 0
	j	beq_cont.8518
beq_else.8517:
	addi	r0 r1 1
beq_cont.8518:
	j	beq_cont.8514
beq_else.8513:
	addi	r0 r1 0
beq_cont.8514:
	j	beq_cont.8510
beq_else.8509:
	addi	r0 r1 0
beq_cont.8510:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8519
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f2 r1 r2
	addi	r0 r1 3
	jr	r31
beq_tail_else.8519:
	addi	r0 r1 0
	jr	r31
solver_surface_fast.2944:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	addi	r0 r1 0
	sll	r1 r1 2
	lwoc1	r2 r1 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8520
	addi	r0 r1 1
	j	bfle_nontail_cont.8521
bfle_nontail_else.8520:
	addi	r0 r1 0
bfle_nontail_cont.8521:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_tail_else.8522
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f3
	mul.s	f3 f0 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f3
	mul.s	f3 f1 f1
	add.s	f0 f1 f0
	addi	r0 r4 3
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r3 r2 2
	swoc1	f0 r1 r2
	addi	r0 r1 1
	jr	r31
beq_tail_else.8522:
	addi	r0 r1 0
	jr	r31
solver_second_fast.2950:
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.8523
	addi	r0 r3 0
	j	bfeq_nontail_cont.8524
bfeq_nontail_else.8523:
	addi	r0 r3 1
bfeq_nontail_cont.8524:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.8525
	addi	r0 r1 0
	jr	r31
beq_tail_else.8525:
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	mul.s	f4 f0 f4
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f5
	mul.s	f5 f1 f5
	add.s	f4 f5 f4
	addi	r0 r3 3
	sll	r3 r3 2
	lwoc1	r2 r3 f5
	mul.s	f5 f2 f5
	add.s	f4 f5 f4
	sw	r2 r30 0
	swc1	f3 r30 4
	swc1	f4 r30 8
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	quadratic.2914
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r1 12
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	o_form.2801
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 3
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8526
	lwc1	 r30 f0 16
	j	beq_cont.8527
beq_else.8526:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 16
	sub.s	f1 f0 f0
beq_cont.8527:
	lwc1	 r30 f1 8
	mul.s	f1 f1 f2
	lwc1	 r30 f3 4
	mul.s	f3 f0 f0
	sub.s	f2 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8528
	addi	r0 r1 1
	j	bfle_nontail_cont.8529
bfle_nontail_else.8528:
	addi	r0 r1 0
bfle_nontail_cont.8529:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8530
	lw	r30 r1 12
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	o_isinvert.2805
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8531
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	lwc1	 r30 f0 20
	sw	r1 r30 24
	sw	r2 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	min_caml_sqrt
	addi	r30 r30 -36
	lw	r30 r31 32
	lwc1	 r30 f1 8
	add.s	f1 f0 f0
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f1
	mul.s	f0 f1 f0
	lw	r30 r1 28
	sll	r1 r1 2
	lw	r30 r2 24
	swoc1	f0 r2 r1
	j	beq_cont.8532
beq_else.8531:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	lwc1	 r30 f0 20
	sw	r1 r30 32
	sw	r2 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	min_caml_sqrt
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 8
	sub.s	f1 f0 f0
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f1
	mul.s	f0 f1 f0
	lw	r30 r1 36
	sll	r1 r1 2
	lw	r30 r2 32
	swoc1	f0 r2 r1
beq_cont.8532:
	addi	r0 r1 1
	jr	r31
beq_tail_else.8530:
	addi	r0 r1 0
	jr	r31
solver_fast.2956:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r1 r5 2
	lwo	r4 r5 r4
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r3 r5 f0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r4 r30 8
	sw	r3 r30 12
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r4
	jal	o_param_x.2817
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f1 16
	sub.s	f1 f0 f0
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 12
	lwoc1	r2 r1 f1
	lw	r30 r1 8
	swc1	f0 r30 20
	swc1	f1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	o_param_y.2819
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	sub.s	f1 f0 f0
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 12
	lwoc1	r2 r1 f1
	lw	r30 r1 8
	swc1	f0 r30 28
	swc1	f1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	o_param_z.2821
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 32
	sub.s	f1 f0 f0
	lw	r30 r1 4
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	d_const.2862
	addi	r30 r30 -44
	lw	r30 r31 40
	lw	r30 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r30 r2 8
	sw	r1 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r1 r2
	jal	o_form.2801
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r2 1
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8533
	addi	r0 r2 2
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8534
	lwc1	 r30 f0 20
	lwc1	 r30 f1 28
	lwc1	 r30 f2 36
	lw	r30 r1 8
	lw	r30 r2 40
	j	solver_second_fast.2950
beq_tail_else.8534:
	lwc1	 r30 f0 20
	lwc1	 r30 f1 28
	lwc1	 r30 f2 36
	lw	r30 r1 8
	lw	r30 r2 40
	j	solver_surface_fast.2944
beq_tail_else.8533:
	lw	r30 r1 4
	sw	r31 r30 44
	addi	r30 r30 48
	jal	d_vec.2860
	addi	r30 r30 -48
	lw	r30 r31 44
	mov	r2 r1
	lwc1	 r30 f0 20
	lwc1	 r30 f1 28
	lwc1	 r30 f2 36
	lw	r30 r1 8
	lw	r30 r3 40
	j	solver_rect_fast.2937
solver_surface_fast2.2960:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r1 0
	sll	r1 r1 2
	lwoc1	r2 r1 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8535
	addi	r0 r1 1
	j	bfle_nontail_cont.8536
bfle_nontail_else.8535:
	addi	r0 r1 0
bfle_nontail_cont.8536:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.8537
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r2 r5 f0
	addi	r0 r2 3
	sll	r2 r2 2
	lwoc1	r3 r2 f1
	mul.s	f0 f1 f0
	sll	r4 r2 2
	swoc1	f0 r1 r2
	addi	r0 r1 1
	jr	r31
beq_tail_else.8537:
	addi	r0 r1 0
	jr	r31
solver_second_fast2.2967:
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.8538
	addi	r0 r4 0
	j	bfeq_nontail_cont.8539
bfeq_nontail_else.8538:
	addi	r0 r4 1
bfeq_nontail_cont.8539:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.8540
	addi	r0 r1 0
	jr	r31
beq_tail_else.8540:
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f4
	mul.s	f4 f0 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f4
	mul.s	f4 f1 f1
	add.s	f0 f1 f0
	addi	r0 r4 3
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 3
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	mul.s	f0 f0 f2
	mul.s	f3 f1 f1
	sub.s	f2 f1 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8541
	addi	r0 r3 1
	j	bfle_nontail_cont.8542
bfle_nontail_else.8541:
	addi	r0 r3 0
bfle_nontail_cont.8542:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.8543
	sw	r2 r30 0
	swc1	f0 r30 4
	swc1	f1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	o_isinvert.2805
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8544
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	lwc1	 r30 f0 8
	sw	r1 r30 12
	sw	r2 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_sqrt
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f1 4
	add.s	f1 f0 f0
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f1
	mul.s	f0 f1 f0
	lw	r30 r1 16
	sll	r1 r1 2
	lw	r30 r2 12
	swoc1	f0 r2 r1
	j	beq_cont.8545
beq_else.8544:
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r2 0
	lwc1	 r30 f0 8
	sw	r1 r30 20
	sw	r2 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_sqrt
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 4
	sub.s	f1 f0 f0
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f1
	mul.s	f0 f1 f0
	lw	r30 r1 24
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
beq_cont.8545:
	addi	r0 r1 1
	jr	r31
beq_tail_else.8543:
	addi	r0 r1 0
	jr	r31
solver_fast2.2974:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r1 r4 2
	lwo	r3 r4 r3
	sw	r3 r30 0
	sw	r1 r30 4
	sw	r2 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r3
	jal	o_param_ctbl.2839
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	lw	r30 r2 8
	sw	r1 r30 12
	swc1	f2 r30 16
	swc1	f1 r30 20
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r2
	jal	d_const.2862
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r2 4
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r30 r2 0
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r2
	jal	o_form.2801
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 1
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8546
	addi	r0 r2 2
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8547
	lwc1	 r30 f0 24
	lwc1	 r30 f1 20
	lwc1	 r30 f2 16
	lw	r30 r1 0
	lw	r30 r2 28
	lw	r30 r3 12
	j	solver_second_fast2.2967
beq_tail_else.8547:
	lwc1	 r30 f0 24
	lwc1	 r30 f1 20
	lwc1	 r30 f2 16
	lw	r30 r1 0
	lw	r30 r2 28
	lw	r30 r3 12
	j	solver_surface_fast2.2960
beq_tail_else.8546:
	lw	r30 r1 8
	sw	r31 r30 32
	addi	r30 r30 36
	jal	d_vec.2860
	addi	r30 r30 -36
	lw	r30 r31 32
	mov	r2 r1
	lwc1	 r30 f0 24
	lwc1	 r30 f1 20
	lwc1	 r30 f2 16
	lw	r30 r1 0
	lw	r30 r3 28
	j	solver_rect_fast.2937
setup_rect_table.2977:
	addi	r0 r3 6
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	lwoc1	r3 r2 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.8548
	addi	r0 r2 0
	j	bfeq_nontail_cont.8549
bfeq_nontail_else.8548:
	addi	r0 r2 1
bfeq_nontail_cont.8549:
	addi	r0 r4 0
	sw	r1 r30 8
	sub	r2 r4 r25
	beq	r25 r0 beq_else.8550
	addi	r0 r2 1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	j	beq_cont.8551
beq_else.8550:
	addi	r0 r2 0
	lw	r30 r4 0
	sw	r2 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r4
	jal	o_isinvert.2805
	addi	r30 r30 -20
	lw	r30 r31 16
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	lwoc1	r3 r2 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8552
	addi	r0 r2 1
	j	bfle_nontail_cont.8553
bfle_nontail_else.8552:
	addi	r0 r2 0
bfle_nontail_cont.8553:
	sw	r31 r30 16
	addi	r30 r30 20
	jal	xor.2742
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r2 0
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r2
	jal	o_param_a.2809
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r1 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	fneg_cond.2747
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r1 12
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	addi	r0 r1 1
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r3 0
	sll	r3 r3 2
	lw	r30 r4 4
	lwoc1	r4 r3 f1
	div.s	f0 f1 f0
	sll	r1 r1 2
	swoc1	f0 r2 r1
beq_cont.8551:
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.8554
	addi	r0 r1 0
	j	bfeq_nontail_cont.8555
bfeq_nontail_else.8554:
	addi	r0 r1 1
bfeq_nontail_cont.8555:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.8556
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sll	r1 r1 2
	lw	r30 r3 8
	swoc1	f0 r3 r1
	j	beq_cont.8557
beq_else.8556:
	addi	r0 r1 2
	lw	r30 r3 0
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r3
	jal	o_isinvert.2805
	addi	r30 r30 -28
	lw	r30 r31 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r2 1
	sll	r2 r2 2
	lw	r30 r3 4
	lwoc1	r3 r2 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8558
	addi	r0 r2 1
	j	bfle_nontail_cont.8559
bfle_nontail_else.8558:
	addi	r0 r2 0
bfle_nontail_cont.8559:
	sw	r31 r30 24
	addi	r30 r30 28
	jal	xor.2742
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r2 0
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r2
	jal	o_param_b.2811
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	fneg_cond.2747
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 20
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	addi	r0 r1 3
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r3 1
	sll	r3 r3 2
	lw	r30 r4 4
	lwoc1	r4 r3 f1
	div.s	f0 f1 f0
	sll	r1 r1 2
	swoc1	f0 r2 r1
beq_cont.8557:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.8560
	addi	r0 r1 0
	j	bfeq_nontail_cont.8561
bfeq_nontail_else.8560:
	addi	r0 r1 1
bfeq_nontail_cont.8561:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.8562
	addi	r0 r1 5
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	j	beq_cont.8563
beq_else.8562:
	addi	r0 r1 4
	lw	r30 r3 0
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r3
	jal	o_isinvert.2805
	addi	r30 r30 -36
	lw	r30 r31 32
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r2 2
	sll	r2 r2 2
	lw	r30 r3 4
	lwoc1	r3 r2 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8564
	addi	r0 r2 1
	j	bfle_nontail_cont.8565
bfle_nontail_else.8564:
	addi	r0 r2 0
bfle_nontail_cont.8565:
	sw	r31 r30 32
	addi	r30 r30 36
	jal	xor.2742
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r2 0
	sw	r1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r1 r2
	jal	o_param_c.2813
	addi	r30 r30 -40
	lw	r30 r31 36
	lw	r30 r1 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	fneg_cond.2747
	addi	r30 r30 -40
	lw	r30 r31 36
	lw	r30 r1 28
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	addi	r0 r1 5
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r3 2
	sll	r3 r3 2
	lw	r30 r4 4
	lwoc1	r4 r3 f1
	div.s	f0 f1 f0
	sll	r1 r1 2
	swoc1	f0 r2 r1
beq_cont.8563:
	mov	r1 r2
	jr	r31
setup_surface_table.2980:
	addi	r0 r3 4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	lwoc1	r3 r2 f0
	lw	r30 r2 0
	sw	r1 r30 8
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	o_param_a.2809
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	mul.s	f1 f0 f0
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	lw	r30 r1 0
	swc1	f0 r30 16
	swc1	f1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	o_param_b.2811
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 20
	mul.s	f1 f0 f0
	lwc1	 r30 f1 16
	add.s	f1 f0 f0
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	lw	r30 r1 0
	swc1	f0 r30 24
	swc1	f1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	o_param_c.2813
	addi	r30 r30 -36
	lw	r30 r31 32
	lwc1	 r30 f1 28
	mul.s	f1 f0 f0
	lwc1	 r30 f1 24
	add.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8566
	addi	r0 r1 1
	j	bfle_nontail_cont.8567
bfle_nontail_else.8566:
	addi	r0 r1 0
bfle_nontail_cont.8567:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8568
	addi	r0 r1 0
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f1
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f1 r2 r1
	addi	r0 r1 1
	lw	r30 r3 0
	sw	r1 r30 32
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r1 r3
	jal	o_param_a.2809
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 36
	div.s	f0 f1 f0
	neg.s	f0 f0
	lw	r30 r1 32
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	addi	r0 r1 2
	lw	r30 r3 0
	sw	r1 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r1 r3
	jal	o_param_b.2811
	addi	r30 r30 -48
	lw	r30 r31 44
	lwc1	 r30 f1 36
	div.s	f0 f1 f0
	neg.s	f0 f0
	lw	r30 r1 40
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	addi	r0 r1 3
	lw	r30 r3 0
	sw	r1 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r3
	jal	o_param_c.2813
	addi	r30 r30 -52
	lw	r30 r31 48
	lwc1	 r30 f1 36
	div.s	f0 f1 f0
	neg.s	f0 f0
	lw	r30 r1 44
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	j	beq_cont.8569
beq_else.8568:
	addi	r0 r1 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
beq_cont.8569:
	mov	r1 r2
	jr	r31
setup_second_table.2983:
	addi	r0 r3 5
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	lwoc1	r3 r2 f0
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f2
	lw	r30 r2 0
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r2
	jal	quadratic.2914
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	lw	r30 r1 0
	swc1	f0 r30 12
	swc1	f1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	o_param_a.2809
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f1 16
	mul.s	f1 f0 f0
	neg.s	f0 f0
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	lw	r30 r1 0
	swc1	f0 r30 20
	swc1	f1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	o_param_b.2811
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	mul.s	f1 f0 f0
	neg.s	f0 f0
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	lw	r30 r1 0
	swc1	f0 r30 28
	swc1	f1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	o_param_c.2813
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 32
	mul.s	f1 f0 f0
	neg.s	f0 f0
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 8
	lwc1	 r30 f1 12
	swoc1	f1 r2 r1
	lw	r30 r1 0
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	o_isrot.2807
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8570
	addi	r0 r1 1
	addi	r0 r2 2
	sll	r2 r2 2
	lw	r30 r3 4
	lwoc1	r3 r2 f0
	lw	r30 r2 0
	sw	r1 r30 40
	swc1	f0 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r2
	jal	o_param_r2.2835
	addi	r30 r30 -52
	lw	r30 r31 48
	lwc1	 r30 f1 44
	mul.s	f1 f0 f0
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	lw	r30 r1 0
	swc1	f0 r30 48
	swc1	f1 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	jal	o_param_r3.2837
	addi	r30 r30 -60
	lw	r30 r31 56
	lwc1	 r30 f1 52
	mul.s	f1 f0 f0
	lwc1	 r30 f1 48
	add.s	f1 f0 f0
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lwc1	 r30 f1 20
	sub.s	f1 f0 f0
	lw	r30 r1 40
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	addi	r0 r1 2
	addi	r0 r3 2
	sll	r3 r3 2
	lw	r30 r4 4
	lwoc1	r4 r3 f0
	lw	r30 r3 0
	sw	r1 r30 56
	swc1	f0 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	mov	r1 r3
	jal	o_param_r1.2833
	addi	r30 r30 -68
	lw	r30 r31 64
	lwc1	 r30 f1 60
	mul.s	f1 f0 f0
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	lw	r30 r1 0
	swc1	f0 r30 64
	swc1	f1 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	jal	o_param_r3.2837
	addi	r30 r30 -76
	lw	r30 r31 72
	lwc1	 r30 f1 68
	mul.s	f1 f0 f0
	lwc1	 r30 f1 64
	add.s	f1 f0 f0
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lwc1	 r30 f1 28
	sub.s	f1 f0 f0
	lw	r30 r1 56
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	addi	r0 r1 3
	addi	r0 r3 1
	sll	r3 r3 2
	lw	r30 r4 4
	lwoc1	r4 r3 f0
	lw	r30 r3 0
	sw	r1 r30 72
	swc1	f0 r30 76
	sw	r31 r30 80
	addi	r30 r30 84
	mov	r1 r3
	jal	o_param_r1.2833
	addi	r30 r30 -84
	lw	r30 r31 80
	lwc1	 r30 f1 76
	mul.s	f1 f0 f0
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	lw	r30 r1 0
	swc1	f0 r30 80
	swc1	f1 r30 84
	sw	r31 r30 88
	addi	r30 r30 92
	jal	o_param_r2.2835
	addi	r30 r30 -92
	lw	r30 r31 88
	lwc1	 r30 f1 84
	mul.s	f1 f0 f0
	lwc1	 r30 f1 80
	add.s	f1 f0 f0
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lwc1	 r30 f1 36
	sub.s	f1 f0 f0
	lw	r30 r1 72
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	j	beq_cont.8571
beq_else.8570:
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 8
	lwc1	 r30 f0 20
	swoc1	f0 r2 r1
	addi	r0 r1 2
	sll	r1 r1 2
	lwc1	 r30 f0 28
	swoc1	f0 r2 r1
	addi	r0 r1 3
	sll	r1 r1 2
	lwc1	 r30 f0 36
	swoc1	f0 r2 r1
beq_cont.8571:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 12
	sub.s	f1 f0 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.8572
	addi	r0 r1 0
	j	bfeq_nontail_cont.8573
bfeq_nontail_else.8572:
	addi	r0 r1 1
bfeq_nontail_cont.8573:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.8574
	j	beq_cont.8575
beq_else.8574:
	addi	r0 r1 4
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	div.s	f0 f1 f0
	sll	r1 r1 2
	swoc1	f0 r2 r1
beq_cont.8575:
	mov	r1 r2
	jr	r31
iter_setup_dirvec_constants.2986:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.8576
	jr	r31
ble_tail_else.8576:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r2 r4 2
	lwo	r3 r4 r3
	sw	r2 r30 0
	sw	r3 r30 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	d_const.2862
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r2 8
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	d_vec.2860
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r2 4
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r2
	jal	o_form.2801
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8578
	addi	r0 r2 2
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8580
	lw	r30 r1 16
	lw	r30 r2 4
	sw	r31 r30 20
	addi	r30 r30 24
	jal	setup_second_table.2983
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 0
	sll	r2 r3 2
	lw	r30 r4 12
	swo	r1 r4 r3
	j	beq_cont.8581
beq_else.8580:
	lw	r30 r1 16
	lw	r30 r2 4
	sw	r31 r30 20
	addi	r30 r30 24
	jal	setup_surface_table.2980
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 0
	sll	r2 r3 2
	lw	r30 r4 12
	swo	r1 r4 r3
beq_cont.8581:
	j	beq_cont.8579
beq_else.8578:
	lw	r30 r1 16
	lw	r30 r2 4
	sw	r31 r30 20
	addi	r30 r30 24
	jal	setup_rect_table.2977
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 0
	sll	r2 r3 2
	lw	r30 r4 12
	swo	r1 r4 r3
beq_cont.8579:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 8
	j	iter_setup_dirvec_constants.2986
setup_dirvec_constants.2989:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 1
	sub	r2 r3 r2
	j	iter_setup_dirvec_constants.2986
setup_startp_constants.2991:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.8582
	jr	r31
ble_tail_else.8582:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r2 r4 2
	lwo	r3 r4 r3
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r3 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r3
	jal	o_param_ctbl.2839
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r2 8
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	o_form.2801
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	addi	r0 r3 0
	sll	r3 r3 2
	lw	r30 r4 4
	lwoc1	r4 r3 f0
	lw	r30 r3 8
	sw	r1 r30 16
	sw	r2 r30 20
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r3
	jal	o_param_x.2817
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	sub.s	f1 f0 f0
	lw	r30 r1 20
	sll	r1 r1 2
	lw	r30 r2 12
	swoc1	f0 r2 r1
	addi	r0 r1 1
	addi	r0 r3 1
	sll	r3 r3 2
	lw	r30 r4 4
	lwoc1	r4 r3 f0
	lw	r30 r3 8
	sw	r1 r30 28
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r1 r3
	jal	o_param_y.2819
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 32
	sub.s	f1 f0 f0
	lw	r30 r1 28
	sll	r1 r1 2
	lw	r30 r2 12
	swoc1	f0 r2 r1
	addi	r0 r1 2
	addi	r0 r3 2
	sll	r3 r3 2
	lw	r30 r4 4
	lwoc1	r4 r3 f0
	lw	r30 r3 8
	sw	r1 r30 36
	swc1	f0 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r1 r3
	jal	o_param_z.2821
	addi	r30 r30 -48
	lw	r30 r31 44
	lwc1	 r30 f1 40
	sub.s	f1 f0 f0
	lw	r30 r1 36
	sll	r1 r1 2
	lw	r30 r2 12
	swoc1	f0 r2 r1
	addi	r0 r1 2
	lw	r30 r3 16
	sub	r3 r1 r25
	beq	r25 r0 beq_else.8584
	addi	r0 r1 2
	sub	r3 r1 r25
	blez	r25 ble_nontail_else.8586
	addi	r0 r1 0
	sll	r1 r1 2
	lwoc1	r2 r1 f0
	addi	r0 r1 1
	sll	r1 r1 2
	lwoc1	r2 r1 f1
	addi	r0 r1 2
	sll	r1 r1 2
	lwoc1	r2 r1 f2
	lw	r30 r1 8
	sw	r31 r30 44
	addi	r30 r30 48
	jal	quadratic.2914
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r1 3
	addi	r0 r2 3
	lw	r30 r3 16
	sub	r3 r2 r25
	beq	r25 r0 beq_else.8588
	j	beq_cont.8589
beq_else.8588:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f0
beq_cont.8589:
	sll	r1 r1 2
	lw	r30 r2 12
	swoc1	f0 r2 r1
	j	ble_nontail_cont.8587
ble_nontail_else.8586:
ble_nontail_cont.8587:
	j	beq_cont.8585
beq_else.8584:
	addi	r0 r1 3
	lw	r30 r3 8
	sw	r1 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r3
	jal	o_param_abc.2815
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 12
	lwoc1	r3 r2 f0
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f2
	sw	r31 r30 48
	addi	r30 r30 52
	jal	veciprod2.2777
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r1 44
	sll	r1 r1 2
	lw	r30 r2 12
	swoc1	f0 r2 r1
beq_cont.8585:
	addi	r0 r1 1
	lw	r30 r2 0
	sub	r2 r1 r2
	lw	r30 r1 4
	j	setup_startp_constants.2991
setup_startp.2994:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	mov	r28 r2
	mov	r2 r1
	mov	r1 r28
	jal	veccpy.2763
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r30 r30 4
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -4
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r2
	lw	r30 r1 0
	j	setup_startp_constants.2991
is_rect_outside.2996:
	swc1	f2 r30 0
	swc1	f1 r30 4
	sw	r1 r30 8
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	o_param_a.2809
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	abs.s	f1 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8590
	addi	r0 r1 1
	j	bfle_nontail_cont.8591
bfle_nontail_else.8590:
	addi	r0 r1 0
bfle_nontail_cont.8591:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8592
	lw	r30 r1 8
	sw	r31 r30 16
	addi	r30 r30 20
	jal	o_param_b.2811
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 4
	abs.s	f1 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8594
	addi	r0 r1 1
	j	bfle_nontail_cont.8595
bfle_nontail_else.8594:
	addi	r0 r1 0
bfle_nontail_cont.8595:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8596
	lw	r30 r1 8
	sw	r31 r30 16
	addi	r30 r30 20
	jal	o_param_c.2813
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 0
	abs.s	f1 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8598
	addi	r0 r1 1
	j	bfle_nontail_cont.8599
bfle_nontail_else.8598:
	addi	r0 r1 0
bfle_nontail_cont.8599:
	j	beq_cont.8597
beq_else.8596:
	addi	r0 r1 0
beq_cont.8597:
	j	beq_cont.8593
beq_else.8592:
	addi	r0 r1 0
beq_cont.8593:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8600
	lw	r30 r1 8
	j	o_isinvert.2805
beq_tail_else.8600:
	lw	r30 r1 8
	sw	r31 r30 16
	addi	r30 r30 20
	jal	o_isinvert.2805
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8601
	addi	r0 r1 0
	jr	r31
beq_tail_else.8601:
	addi	r0 r1 1
	jr	r31
is_plane_outside.3001:
	sw	r1 r30 0
	swc1	f2 r30 4
	swc1	f1 r30 8
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	o_param_abc.2815
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f0 12
	lwc1	 r30 f1 8
	lwc1	 r30 f2 4
	sw	r31 r30 16
	addi	r30 r30 20
	jal	veciprod2.2777
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r1 0
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	o_isinvert.2805
	addi	r30 r30 -24
	lw	r30 r31 20
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 16
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8602
	addi	r0 r2 1
	j	bfle_nontail_cont.8603
bfle_nontail_else.8602:
	addi	r0 r2 0
bfle_nontail_cont.8603:
	sw	r31 r30 20
	addi	r30 r30 24
	jal	xor.2742
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8604
	addi	r0 r1 0
	jr	r31
beq_tail_else.8604:
	addi	r0 r1 1
	jr	r31
is_second_outside.3006:
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	quadratic.2914
	addi	r30 r30 -8
	lw	r30 r31 4
	lw	r30 r1 0
	swc1	f0 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	o_form.2801
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 3
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8605
	lwc1	 r30 f0 4
	j	beq_cont.8606
beq_else.8605:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 4
	sub.s	f1 f0 f0
beq_cont.8606:
	lw	r30 r1 0
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	o_isinvert.2805
	addi	r30 r30 -16
	lw	r30 r31 12
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 8
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8607
	addi	r0 r2 1
	j	bfle_nontail_cont.8608
bfle_nontail_else.8607:
	addi	r0 r2 0
bfle_nontail_cont.8608:
	sw	r31 r30 12
	addi	r30 r30 16
	jal	xor.2742
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8609
	addi	r0 r1 0
	jr	r31
beq_tail_else.8609:
	addi	r0 r1 1
	jr	r31
is_outside.3011:
	swc1	f2 r30 0
	swc1	f1 r30 4
	sw	r1 r30 8
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	o_param_x.2817
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	sub.s	f1 f0 f0
	lw	r30 r1 8
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	o_param_y.2819
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f1 4
	sub.s	f1 f0 f0
	lw	r30 r1 8
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	o_param_z.2821
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 0
	sub.s	f1 f0 f0
	lw	r30 r1 8
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	o_form.2801
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 1
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8610
	addi	r0 r2 2
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8611
	lwc1	 r30 f0 16
	lwc1	 r30 f1 20
	lwc1	 r30 f2 24
	lw	r30 r1 8
	j	is_second_outside.3006
beq_tail_else.8611:
	lwc1	 r30 f0 16
	lwc1	 r30 f1 20
	lwc1	 r30 f2 24
	lw	r30 r1 8
	j	is_plane_outside.3001
beq_tail_else.8610:
	lwc1	 r30 f0 16
	lwc1	 r30 f1 20
	lwc1	 r30 f2 24
	lw	r30 r1 8
	j	is_rect_outside.2996
check_all_inside.3016:
	sll	r1 r3 2
	lwo	r2 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.8612
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r3 r3 2
	lwo	r4 r3 r3
	swc1	f2 r30 0
	swc1	f1 r30 4
	swc1	f0 r30 8
	sw	r2 r30 12
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r3
	jal	is_outside.3011
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8613
	addi	r0 r1 0
	jr	r31
beq_tail_else.8613:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lwc1	 r30 f0 8
	lwc1	 r30 f1 4
	lwc1	 r30 f2 0
	lw	r30 r2 12
	j	check_all_inside.3016
beq_tail_else.8612:
	addi	r0 r1 1
	jr	r31
shadow_check_and_group.3022:
	sll	r1 r3 2
	lwo	r2 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.8614
	sll	r1 r3 2
	lwo	r2 r3 r3
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light_dirvec
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r3 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r4
	mov	r1 r3
	mov	r3 r5
	jal	solver_fast.2956
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8615
	lui	r24 48716
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f1 f0 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8617
	addi	r0 r1 1
	j	bfle_nontail_cont.8618
bfle_nontail_else.8617:
	addi	r0 r1 0
bfle_nontail_cont.8618:
	j	beq_cont.8616
beq_else.8615:
	addi	r0 r1 0
beq_cont.8616:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8619
	lui	r24 15395
	ori	r24 r24 55050
	mtc1	r24 f1
	add.s	f0 f1 f0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	mul.s	f1 f0 f1
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	add.s	f1 f2 f1
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	mul.s	f2 f0 f2
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	add.s	f2 f3 f2
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	mul.s	f3 f0 f0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	add.s	f0 f3 f0
	addi	r0 r1 0
	lw	r30 r2 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov.s	f2 f31
	mov.s	f0 f2
	mov.s	f1 f0
	mov.s	f31 f1
	jal	check_all_inside.3016
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8620
	addi	r0 r1 1
	jr	r31
beq_tail_else.8620:
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	lw	r30 r2 0
	j	shadow_check_and_group.3022
beq_tail_else.8619:
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	lw	r30 r2 8
	sll	r2 r2 2
	lwo	r1 r2 r1
	sw	r31 r30 12
	addi	r30 r30 16
	jal	o_isinvert.2805
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8621
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	lw	r30 r2 0
	j	shadow_check_and_group.3022
beq_tail_else.8621:
	addi	r0 r1 0
	jr	r31
beq_tail_else.8614:
	addi	r0 r1 0
	jr	r31
shadow_check_one_or_group.3025:
	sll	r1 r3 2
	lwo	r2 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.8622
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r3 r3 2
	lwo	r4 r3 r3
	addi	r0 r4 0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r2 r3
	mov	r1 r4
	jal	shadow_check_and_group.3022
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8623
	addi	r0 r1 1
	jr	r31
beq_tail_else.8623:
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	lw	r30 r2 0
	j	shadow_check_one_or_group.3025
beq_tail_else.8622:
	addi	r0 r1 0
	jr	r31
shadow_check_one_or_matrix.3028:
	sll	r1 r3 2
	lwo	r2 r3 r3
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r3 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.8624
	addi	r0 r5 99
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sub	r4 r5 r25
	beq	r25 r0 beq_else.8625
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light_dirvec
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r3 r6
	mov	r2 r5
	mov	r1 r4
	jal	solver_fast.2956
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8627
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8629
	addi	r0 r1 1
	j	bfle_nontail_cont.8630
bfle_nontail_else.8629:
	addi	r0 r1 0
bfle_nontail_cont.8630:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8631
	addi	r0 r1 1
	lw	r30 r2 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8633
	addi	r0 r1 1
	j	beq_cont.8634
beq_else.8633:
	addi	r0 r1 0
beq_cont.8634:
	j	beq_cont.8632
beq_else.8631:
	addi	r0 r1 0
beq_cont.8632:
	j	beq_cont.8628
beq_else.8627:
	addi	r0 r1 0
beq_cont.8628:
	j	beq_cont.8626
beq_else.8625:
	addi	r0 r1 1
beq_cont.8626:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8635
	addi	r0 r1 1
	lw	r30 r2 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8636
	addi	r0 r1 1
	jr	r31
beq_tail_else.8636:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	j	shadow_check_one_or_matrix.3028
beq_tail_else.8635:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	j	shadow_check_one_or_matrix.3028
beq_tail_else.8624:
	addi	r0 r1 0
	jr	r31
solve_each_element.3031:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.8637
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sw	r4 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	mov	r1 r4
	mov	r3 r5
	jal	solver.2933
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8638
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8639
	addi	r0 r2 1
	j	bfle_nontail_cont.8640
bfle_nontail_else.8639:
	addi	r0 r2 0
bfle_nontail_cont.8640:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.8641
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	sub.s	f1 f0 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8643
	addi	r0 r2 1
	j	bfle_nontail_cont.8644
bfle_nontail_else.8643:
	addi	r0 r2 0
bfle_nontail_cont.8644:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.8645
	lui	r24 15395
	ori	r24 r24 55050
	mtc1	r24 f1
	add.s	f0 f1 f0
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 0
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f1
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	add.s	f1 f2 f1
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f2
	mul.s	f2 f0 f2
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f3
	add.s	f2 f3 f2
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f3
	mul.s	f3 f0 f3
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f4
	add.s	f3 f4 f3
	addi	r0 r2 0
	lw	r30 r4 4
	sw	r1 r30 16
	swc1	f3 r30 20
	swc1	f2 r30 24
	swc1	f1 r30 28
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r1 r2
	mov	r2 r4
	mov.s	f1 f0
	mov.s	f2 f1
	mov.s	f3 f2
	jal	check_all_inside.3016
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8647
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 0
	sll	r2 r2 2
	lwc1	 r30 f0 32
	swoc1	f0 r1 r2
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	lwc1	 r30 f0 28
	lwc1	 r30 f1 24
	lwc1	 r30 f2 20
	sw	r31 r30 36
	addi	r30 r30 40
	jal	vecset.2753
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 12
	swo	r3 r1 r2
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r3 r1 r2
	j	beq_cont.8648
beq_else.8647:
beq_cont.8648:
	j	beq_cont.8646
beq_else.8645:
beq_cont.8646:
	j	beq_cont.8642
beq_else.8641:
beq_cont.8642:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_each_element.3031
beq_tail_else.8638:
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	lw	r30 r2 12
	sll	r2 r2 2
	lwo	r1 r2 r1
	sw	r31 r30 36
	addi	r30 r30 40
	jal	o_isinvert.2805
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8649
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_each_element.3031
beq_tail_else.8649:
	jr	r31
beq_tail_else.8637:
	jr	r31
solve_one_or_network.3035:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.8652
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r4 r4 2
	lwo	r5 r4 r4
	addi	r0 r5 0
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r4
	mov	r1 r5
	jal	solve_each_element.3031
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_one_or_network.3035
beq_tail_else.8652:
	jr	r31
trace_or_matrix.3039:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 0
	sll	r5 r5 2
	lwo	r4 r5 r5
	addi	r0 r6 -1
	sub	r5 r6 r25
	beq	r25 r0 beq_tail_else.8654
	addi	r0 r6 99
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sub	r5 r6 r25
	beq	r25 r0 beq_else.8655
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sw	r4 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	mov	r1 r5
	mov	r3 r6
	jal	solver.2933
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8657
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8659
	addi	r0 r1 1
	j	bfle_nontail_cont.8660
bfle_nontail_else.8659:
	addi	r0 r1 0
bfle_nontail_cont.8660:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8661
	addi	r0 r1 1
	lw	r30 r2 12
	lw	r30 r3 0
	sw	r31 r30 16
	addi	r30 r30 20
	jal	solve_one_or_network.3035
	addi	r30 r30 -20
	lw	r30 r31 16
	j	beq_cont.8662
beq_else.8661:
beq_cont.8662:
	j	beq_cont.8658
beq_else.8657:
beq_cont.8658:
	j	beq_cont.8656
beq_else.8655:
	addi	r0 r5 1
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r4
	mov	r1 r5
	jal	solve_one_or_network.3035
	addi	r30 r30 -20
	lw	r30 r31 16
beq_cont.8656:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	trace_or_matrix.3039
beq_tail_else.8654:
	jr	r31
judge_intersection.3043:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	lui	r24 20078
	ori	r24 r24 27432
	mtc1	r24 f0
	sll	r3 r3 2
	swoc1	f0 r2 r3
	addi	r0 r2 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r3 r4 r3
	sw	r31 r30 0
	addi	r30 r30 4
	mov	r28 r3
	mov	r3 r1
	mov	r1 r2
	mov	r2 r28
	jal	trace_or_matrix.3039
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f0 f1 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8664
	addi	r0 r1 1
	j	bfle_nontail_cont.8665
bfle_nontail_else.8664:
	addi	r0 r1 0
bfle_nontail_cont.8665:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8666
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.8667
	addi	r0 r1 1
	jr	r31
bfle_tail_else.8667:
	addi	r0 r1 0
	jr	r31
beq_tail_else.8666:
	addi	r0 r1 0
	jr	r31
solve_each_element_fast.3045:
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r3
	jal	d_vec.2860
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r2 8
	sll	r2 r3 2
	lw	r30 r4 4
	lwo	r4 r3 r3
	addi	r0 r5 -1
	sub	r3 r5 r25
	beq	r25 r0 beq_tail_else.8668
	lw	r30 r5 0
	sw	r1 r30 12
	sw	r3 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r5
	mov	r1 r3
	jal	solver_fast2.2974
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8669
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8670
	addi	r0 r2 1
	j	bfle_nontail_cont.8671
bfle_nontail_else.8670:
	addi	r0 r2 0
bfle_nontail_cont.8671:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.8672
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	sub.s	f1 f0 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8674
	addi	r0 r2 1
	j	bfle_nontail_cont.8675
bfle_nontail_else.8674:
	addi	r0 r2 0
bfle_nontail_cont.8675:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.8676
	lui	r24 15395
	ori	r24 r24 55050
	mtc1	r24 f1
	add.s	f0 f1 f0
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 12
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f1
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	add.s	f1 f2 f1
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f2
	mul.s	f2 f0 f2
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f3
	add.s	f2 f3 f2
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f3
	mul.s	f3 f0 f3
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	add.s	f3 f4 f3
	addi	r0 r2 0
	lw	r30 r3 4
	sw	r1 r30 20
	swc1	f3 r30 24
	swc1	f2 r30 28
	swc1	f1 r30 32
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r1 r2
	mov	r2 r3
	mov.s	f1 f0
	mov.s	f2 f1
	mov.s	f3 f2
	jal	check_all_inside.3016
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8678
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	sll	r2 r2 2
	lwc1	 r30 f0 36
	swoc1	f0 r1 r2
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	lwc1	 r30 f0 32
	lwc1	 r30 f1 28
	lwc1	 r30 f2 24
	sw	r31 r30 40
	addi	r30 r30 44
	jal	vecset.2753
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r3 r1 r2
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 20
	swo	r3 r1 r2
	j	beq_cont.8679
beq_else.8678:
beq_cont.8679:
	j	beq_cont.8677
beq_else.8676:
beq_cont.8677:
	j	beq_cont.8673
beq_else.8672:
beq_cont.8673:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_each_element_fast.3045
beq_tail_else.8669:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	lw	r30 r2 16
	sll	r2 r2 2
	lwo	r1 r2 r1
	sw	r31 r30 40
	addi	r30 r30 44
	jal	o_isinvert.2805
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8680
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_each_element_fast.3045
beq_tail_else.8680:
	jr	r31
beq_tail_else.8668:
	jr	r31
solve_one_or_network_fast.3049:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.8683
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r4 r4 2
	lwo	r5 r4 r4
	addi	r0 r5 0
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r4
	mov	r1 r5
	jal	solve_each_element_fast.3045
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_one_or_network_fast.3049
beq_tail_else.8683:
	jr	r31
trace_or_matrix_fast.3053:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 0
	sll	r5 r5 2
	lwo	r4 r5 r5
	addi	r0 r6 -1
	sub	r5 r6 r25
	beq	r25 r0 beq_tail_else.8685
	addi	r0 r6 99
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sub	r5 r6 r25
	beq	r25 r0 beq_else.8686
	sw	r4 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	mov	r1 r5
	jal	solver_fast2.2974
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8688
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8690
	addi	r0 r1 1
	j	bfle_nontail_cont.8691
bfle_nontail_else.8690:
	addi	r0 r1 0
bfle_nontail_cont.8691:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8692
	addi	r0 r1 1
	lw	r30 r2 12
	lw	r30 r3 0
	sw	r31 r30 16
	addi	r30 r30 20
	jal	solve_one_or_network_fast.3049
	addi	r30 r30 -20
	lw	r30 r31 16
	j	beq_cont.8693
beq_else.8692:
beq_cont.8693:
	j	beq_cont.8689
beq_else.8688:
beq_cont.8689:
	j	beq_cont.8687
beq_else.8686:
	addi	r0 r5 1
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r4
	mov	r1 r5
	jal	solve_one_or_network_fast.3049
	addi	r30 r30 -20
	lw	r30 r31 16
beq_cont.8687:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	trace_or_matrix_fast.3053
beq_tail_else.8685:
	jr	r31
judge_intersection_fast.3057:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	lui	r24 20078
	ori	r24 r24 27432
	mtc1	r24 f0
	sll	r3 r3 2
	swoc1	f0 r2 r3
	addi	r0 r2 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r3 r4 r3
	sw	r31 r30 0
	addi	r30 r30 4
	mov	r28 r3
	mov	r3 r1
	mov	r1 r2
	mov	r2 r28
	jal	trace_or_matrix_fast.3053
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f0 f1 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8695
	addi	r0 r1 1
	j	bfle_nontail_cont.8696
bfle_nontail_else.8695:
	addi	r0 r1 0
bfle_nontail_cont.8696:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8697
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.8698
	addi	r0 r1 1
	jr	r31
bfle_tail_else.8698:
	addi	r0 r1 0
	jr	r31
beq_tail_else.8697:
	addi	r0 r1 0
	jr	r31
get_nvector_rect.3059:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	vecbzero.2761
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r2 1
	lw	r30 r3 4
	sub	r3 r2 r2
	addi	r0 r4 1
	sub	r3 r4 r3
	sll	r3 r3 2
	lw	r30 r4 0
	lwoc1	r4 r3 f0
	sw	r1 r30 8
	sw	r2 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	sgn.2745
	addi	r30 r30 -20
	lw	r30 r31 16
	neg.s	f0 f0
	lw	r30 r1 12
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	jr	r31
get_nvector_plane.3061:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r3 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	o_param_a.2809
	addi	r30 r30 -16
	lw	r30 r31 12
	neg.s	f0 f0
	lw	r30 r1 8
	sll	r1 r1 2
	lw	r30 r2 4
	swoc1	f0 r2 r1
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 1
	lw	r30 r3 0
	sw	r1 r30 12
	sw	r2 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r3
	jal	o_param_b.2811
	addi	r30 r30 -24
	lw	r30 r31 20
	neg.s	f0 f0
	lw	r30 r1 16
	sll	r1 r1 2
	lw	r30 r2 12
	swoc1	f0 r2 r1
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r2 2
	lw	r30 r3 0
	sw	r1 r30 20
	sw	r2 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r3
	jal	o_param_c.2813
	addi	r30 r30 -32
	lw	r30 r31 28
	neg.s	f0 f0
	lw	r30 r1 24
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
	jr	r31
get_nvector_second.3063:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	sw	r1 r30 0
	swc1	f0 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	o_param_x.2817
	addi	r30 r30 -12
	lw	r30 r31 8
	lwc1	 r30 f1 4
	sub.s	f1 f0 f0
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	lw	r30 r1 0
	swc1	f0 r30 8
	swc1	f1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	o_param_y.2819
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	sub.s	f1 f0 f0
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	lw	r30 r1 0
	swc1	f0 r30 16
	swc1	f1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	o_param_z.2821
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 20
	sub.s	f1 f0 f0
	lw	r30 r1 0
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	o_param_a.2809
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 8
	mul.s	f1 f0 f0
	lw	r30 r1 0
	swc1	f0 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	o_param_b.2811
	addi	r30 r30 -36
	lw	r30 r31 32
	lwc1	 r30 f1 16
	mul.s	f1 f0 f0
	lw	r30 r1 0
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	o_param_c.2813
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 24
	mul.s	f1 f0 f0
	lw	r30 r1 0
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	o_isrot.2807
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8701
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	lw	r30 r3 0
	sw	r1 r30 40
	sw	r2 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r3
	jal	o_param_r3.2837
	addi	r30 r30 -52
	lw	r30 r31 48
	lwc1	 r30 f1 16
	mul.s	f1 f0 f0
	lw	r30 r1 0
	swc1	f0 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	o_param_r2.2835
	addi	r30 r30 -56
	lw	r30 r31 52
	lwc1	 r30 f1 24
	mul.s	f1 f0 f0
	lwc1	 r30 f2 48
	add.s	f2 f0 f0
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f2
	mul.s	f0 f2 f0
	lwc1	 r30 f2 28
	add.s	f2 f0 f0
	lw	r30 r1 44
	sll	r1 r1 2
	lw	r30 r2 40
	swoc1	f0 r2 r1
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 1
	lw	r30 r3 0
	sw	r1 r30 52
	sw	r2 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	mov	r1 r3
	jal	o_param_r3.2837
	addi	r30 r30 -64
	lw	r30 r31 60
	lwc1	 r30 f1 8
	mul.s	f1 f0 f0
	lw	r30 r1 0
	swc1	f0 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	jal	o_param_r1.2833
	addi	r30 r30 -68
	lw	r30 r31 64
	lwc1	 r30 f1 24
	mul.s	f1 f0 f0
	lwc1	 r30 f1 60
	add.s	f1 f0 f0
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lwc1	 r30 f1 32
	add.s	f1 f0 f0
	lw	r30 r1 56
	sll	r1 r1 2
	lw	r30 r2 52
	swoc1	f0 r2 r1
	addi	r30 r30 64
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -64
	addi	r0 r2 2
	lw	r30 r3 0
	sw	r1 r30 64
	sw	r2 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r1 r3
	jal	o_param_r2.2835
	addi	r30 r30 -76
	lw	r30 r31 72
	lwc1	 r30 f1 8
	mul.s	f1 f0 f0
	lw	r30 r1 0
	swc1	f0 r30 72
	sw	r31 r30 76
	addi	r30 r30 80
	jal	o_param_r1.2833
	addi	r30 r30 -80
	lw	r30 r31 76
	lwc1	 r30 f1 16
	mul.s	f1 f0 f0
	lwc1	 r30 f1 72
	add.s	f1 f0 f0
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lwc1	 r30 f1 36
	add.s	f1 f0 f0
	lw	r30 r1 68
	sll	r1 r1 2
	lw	r30 r2 64
	swoc1	f0 r2 r1
	j	beq_cont.8702
beq_else.8701:
	addi	r30 r30 76
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -76
	addi	r0 r2 0
	sll	r2 r2 2
	lwc1	 r30 f0 28
	swoc1	f0 r1 r2
	addi	r30 r30 76
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -76
	addi	r0 r2 1
	sll	r2 r2 2
	lwc1	 r30 f0 32
	swoc1	f0 r1 r2
	addi	r30 r30 76
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -76
	addi	r0 r2 2
	sll	r2 r2 2
	lwc1	 r30 f0 36
	swoc1	f0 r1 r2
beq_cont.8702:
	addi	r30 r30 76
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -76
	lw	r30 r2 0
	sw	r1 r30 76
	sw	r31 r30 80
	addi	r30 r30 84
	mov	r1 r2
	jal	o_isinvert.2805
	addi	r30 r30 -84
	lw	r30 r31 80
	mov	r2 r1
	lw	r30 r1 76
	j	vecunit_sgn.2771
get_nvector.3065:
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	o_form.2801
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 1
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8703
	addi	r0 r2 2
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8704
	lw	r30 r1 0
	j	get_nvector_second.3063
beq_tail_else.8704:
	lw	r30 r1 0
	j	get_nvector_plane.3061
beq_tail_else.8703:
	lw	r30 r1 4
	j	get_nvector_rect.3059
utexture.3068:
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	o_texturetype.2799
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r3 0
	lw	r30 r4 4
	sw	r1 r30 8
	sw	r2 r30 12
	sw	r3 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r4
	jal	o_color_red.2827
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r1 16
	sll	r1 r1 2
	lw	r30 r2 12
	swoc1	f0 r2 r1
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r2 1
	lw	r30 r3 4
	sw	r1 r30 20
	sw	r2 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r3
	jal	o_color_green.2829
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 24
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 2
	lw	r30 r3 4
	sw	r1 r30 28
	sw	r2 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r1 r3
	jal	o_color_blue.2831
	addi	r30 r30 -40
	lw	r30 r31 36
	lw	r30 r1 32
	sll	r1 r1 2
	lw	r30 r2 28
	swoc1	f0 r2 r1
	addi	r0 r1 1
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.8705
	addi	r0 r1 2
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.8706
	addi	r0 r1 3
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.8707
	addi	r0 r1 4
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.8708
	jr	r31
beq_tail_else.8708:
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f0
	lw	r30 r1 4
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	o_param_x.2817
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 36
	sub.s	f1 f0 f0
	lw	r30 r1 4
	swc1	f0 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	o_param_a.2809
	addi	r30 r30 -48
	lw	r30 r31 44
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_sqrt
	addi	r30 r30 -48
	lw	r30 r31 44
	lwc1	 r30 f1 40
	mul.s	f1 f0 f0
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f1
	lw	r30 r1 4
	swc1	f0 r30 44
	swc1	f1 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	o_param_z.2821
	addi	r30 r30 -56
	lw	r30 r31 52
	lwc1	 r30 f1 48
	sub.s	f1 f0 f0
	lw	r30 r1 4
	swc1	f0 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	jal	o_param_c.2813
	addi	r30 r30 -60
	lw	r30 r31 56
	sw	r31 r30 56
	addi	r30 r30 60
	jal	min_caml_sqrt
	addi	r30 r30 -60
	lw	r30 r31 56
	lwc1	 r30 f1 52
	mul.s	f1 f0 f0
	lwc1	 r30 f1 44
	mul.s	f1 f1 f2
	mul.s	f0 f0 f3
	add.s	f2 f3 f2
	lui	r24 14545
	ori	r24 r24 46871
	mtc1	r24 f3
	abs.s	f1 f4
	sub.s	f3 f4 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8710
	addi	r0 r1 1
	j	bfle_nontail_cont.8711
bfle_nontail_else.8710:
	addi	r0 r1 0
bfle_nontail_cont.8711:
	addi	r0 r2 0
	swc1	f2 r30 56
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8712
	lui	r24 16752
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.8713
beq_else.8712:
	div.s	f0 f1 f0
	abs.s	f0 f0
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_atan
	addi	r30 r30 -64
	lw	r30 r31 60
	lui	r24 16880
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	div.s	f0 f1 f0
beq_cont.8713:
	swc1	f0 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_floor
	addi	r30 r30 -68
	lw	r30 r31 64
	lwc1	 r30 f1 60
	sub.s	f1 f0 f0
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f1
	lw	r30 r1 4
	swc1	f0 r30 64
	swc1	f1 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	jal	o_param_y.2819
	addi	r30 r30 -76
	lw	r30 r31 72
	lwc1	 r30 f1 68
	sub.s	f1 f0 f0
	lw	r30 r1 4
	swc1	f0 r30 72
	sw	r31 r30 76
	addi	r30 r30 80
	jal	o_param_b.2811
	addi	r30 r30 -80
	lw	r30 r31 76
	sw	r31 r30 76
	addi	r30 r30 80
	jal	min_caml_sqrt
	addi	r30 r30 -80
	lw	r30 r31 76
	lwc1	 r30 f1 72
	mul.s	f1 f0 f0
	lui	r24 14545
	ori	r24 r24 46871
	mtc1	r24 f1
	lwc1	 r30 f2 56
	abs.s	f2 f3
	sub.s	f1 f3 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f1 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8714
	addi	r0 r1 1
	j	bfle_nontail_cont.8715
bfle_nontail_else.8714:
	addi	r0 r1 0
bfle_nontail_cont.8715:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8716
	lui	r24 16752
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.8717
beq_else.8716:
	div.s	f0 f2 f0
	abs.s	f0 f0
	sw	r31 r30 76
	addi	r30 r30 80
	jal	min_caml_atan
	addi	r30 r30 -80
	lw	r30 r31 76
	lui	r24 16880
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	div.s	f0 f1 f0
beq_cont.8717:
	swc1	f0 r30 76
	sw	r31 r30 80
	addi	r30 r30 84
	jal	min_caml_floor
	addi	r30 r30 -84
	lw	r30 r31 80
	lwc1	 r30 f1 76
	sub.s	f1 f0 f0
	lui	r24 15897
	ori	r24 r24 39322
	mtc1	r24 f1
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f2
	lwc1	 r30 f3 64
	sub.s	f2 f3 f2
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f4 f3 f3
	mul.s	f2 f3 f2
	sub.s	f1 f2 f1
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f2
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f3 f0 f0
	mul.s	f2 f0 f0
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8718
	addi	r0 r1 1
	j	bfle_nontail_cont.8719
bfle_nontail_else.8718:
	addi	r0 r1 0
bfle_nontail_cont.8719:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8720
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.8721
beq_else.8720:
beq_cont.8721:
	addi	r30 r30 80
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -80
	addi	r0 r2 2
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f1 f0 f0
	lui	r24 16025
	ori	r24 r24 39322
	mtc1	r24 f1
	div.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.8707:
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f0
	lw	r30 r1 4
	swc1	f0 r30 80
	sw	r31 r30 84
	addi	r30 r30 88
	jal	o_param_x.2817
	addi	r30 r30 -88
	lw	r30 r31 84
	lwc1	 r30 f1 80
	sub.s	f1 f0 f0
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f1
	lw	r30 r1 4
	swc1	f0 r30 84
	swc1	f1 r30 88
	sw	r31 r30 92
	addi	r30 r30 96
	jal	o_param_z.2821
	addi	r30 r30 -96
	lw	r30 r31 92
	lwc1	 r30 f1 88
	sub.s	f1 f0 f0
	lwc1	 r30 f1 84
	mul.s	f1 f1 f1
	mul.s	f0 f0 f0
	add.s	f1 f0 f0
	sw	r31 r30 92
	addi	r30 r30 96
	jal	min_caml_sqrt
	addi	r30 r30 -96
	lw	r30 r31 92
	lui	r24 16672
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	swc1	f0 r30 92
	sw	r31 r30 96
	addi	r30 r30 100
	jal	min_caml_floor
	addi	r30 r30 -100
	lw	r30 r31 96
	lwc1	 r30 f1 92
	sub.s	f1 f0 f0
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	mul.s	f0 f1 f0
	swc1	f0 r30 96
	sw	r31 r30 100
	addi	r30 r30 104
	jal	min_caml_cos
	addi	r30 r30 -104
	lw	r30 r31 100
	lwc1	 r30 f1 96
	swc1	f0 r30 100
	sw	r31 r30 104
	addi	r30 r30 108
	mov.s	f1 f0
	jal	min_caml_cos
	addi	r30 r30 -108
	lw	r30 r31 104
	lwc1	 r30 f1 100
	mul.s	f1 f0 f0
	addi	r30 r30 104
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -104
	addi	r0 r2 1
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 104
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -104
	addi	r0 r2 2
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.8706:
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f0
	lui	r24 16000
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	sw	r31 r30 104
	addi	r30 r30 108
	jal	min_caml_sin
	addi	r30 r30 -108
	lw	r30 r31 104
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f1
	lui	r24 16000
	ori	r24 r24 0
	mtc1	r24 f2
	mul.s	f1 f2 f1
	swc1	f0 r30 104
	sw	r31 r30 108
	addi	r30 r30 112
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -112
	lw	r30 r31 108
	lwc1	 r30 f1 104
	mul.s	f1 f0 f0
	addi	r30 r30 108
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -108
	addi	r0 r2 0
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f1 f0 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 108
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -108
	addi	r0 r2 1
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f0
	mul.s	f1 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.8705:
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f0
	lw	r30 r1 4
	swc1	f0 r30 108
	sw	r31 r30 112
	addi	r30 r30 116
	jal	o_param_x.2817
	addi	r30 r30 -116
	lw	r30 r31 112
	lwc1	 r30 f1 108
	sub.s	f1 f0 f0
	lui	r24 15692
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f1
	swc1	f0 r30 112
	sw	r31 r30 116
	addi	r30 r30 120
	mov.s	f1 f0
	jal	min_caml_floor
	addi	r30 r30 -120
	lw	r30 r31 116
	lui	r24 16800
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16672
	ori	r24 r24 0
	mtc1	r24 f1
	lwc1	 r30 f2 112
	sub.s	f2 f0 f0
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8725
	addi	r0 r1 1
	j	bfle_nontail_cont.8726
bfle_nontail_else.8725:
	addi	r0 r1 0
bfle_nontail_cont.8726:
	addi	r0 r2 2
	sll	r2 r2 2
	lw	r30 r3 0
	lwoc1	r3 r2 f0
	lw	r30 r2 4
	sw	r1 r30 116
	swc1	f0 r30 120
	sw	r31 r30 124
	addi	r30 r30 128
	mov	r1 r2
	jal	o_param_z.2821
	addi	r30 r30 -128
	lw	r30 r31 124
	lwc1	 r30 f1 120
	sub.s	f1 f0 f0
	lui	r24 15692
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f1
	swc1	f0 r30 124
	sw	r31 r30 128
	addi	r30 r30 132
	mov.s	f1 f0
	jal	min_caml_floor
	addi	r30 r30 -132
	lw	r30 r31 128
	lui	r24 16800
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16672
	ori	r24 r24 0
	mtc1	r24 f1
	lwc1	 r30 f2 124
	sub.s	f2 f0 f0
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8727
	addi	r0 r1 1
	j	bfle_nontail_cont.8728
bfle_nontail_else.8727:
	addi	r0 r1 0
bfle_nontail_cont.8728:
	addi	r30 r30 128
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -128
	addi	r0 r3 1
	addi	r0 r4 0
	lw	r30 r5 116
	sub	r5 r4 r25
	beq	r25 r0 beq_else.8729
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.8731
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.8732
beq_else.8731:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.8732:
	j	beq_cont.8730
beq_else.8729:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.8733
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.8734
beq_else.8733:
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.8734:
beq_cont.8730:
	sll	r3 r1 2
	swoc1	f0 r2 r1
	jr	r31
add_light.3071:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f0 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8736
	addi	r0 r1 1
	j	bfle_nontail_cont.8737
bfle_nontail_else.8736:
	addi	r0 r1 0
bfle_nontail_cont.8737:
	addi	r0 r2 0
	swc1	f2 r30 0
	swc1	f1 r30 4
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8738
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -8
	sw	r31 r30 8
	addi	r30 r30 12
	jal	vecaccum.2782
	addi	r30 r30 -12
	lw	r30 r31 8
	j	beq_cont.8739
beq_else.8738:
beq_cont.8739:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 4
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8740
	addi	r0 r1 1
	j	bfle_nontail_cont.8741
bfle_nontail_else.8740:
	addi	r0 r1 0
bfle_nontail_cont.8741:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8742
	mul.s	f1 f1 f0
	mul.s	f1 f1 f1
	mul.s	f0 f1 f0
	lwc1	 r30 f1 0
	mul.s	f0 f1 f0
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r2 0
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	add.s	f1 f0 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r2 1
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	add.s	f1 f0 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r2 2
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	add.s	f1 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.8742:
	jr	r31
trace_reflections.3075:
	addi	r0 r3 0
	sub	r3 r1 r25
	blez	r25 ble_tail_else.8745
	jr	r31
ble_tail_else.8745:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r1 r4 2
	lwo	r3 r4 r3
	sw	r1 r30 0
	swc1	f1 r30 4
	sw	r2 r30 8
	swc1	f0 r30 12
	sw	r3 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r3
	jal	r_dvec.2866
	addi	r30 r30 -24
	lw	r30 r31 20
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	judge_intersection_fast.3057
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8747
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 4
	mult	r1 r2 r1
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	add	r1 r2 r1
	lw	r30 r2 16
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r2
	jal	r_surface_id.2864
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r2 24
	sub	r2 r1 r25
	beq	r25 r0 beq_else.8749
	j	beq_cont.8750
beq_else.8749:
	addi	r0 r1 0
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	sw	r31 r30 28
	addi	r30 r30 32
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8751
	j	beq_cont.8752
beq_else.8751:
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	lw	r30 r2 20
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r2
	jal	d_vec.2860
	addi	r30 r30 -36
	lw	r30 r31 32
	mov	r2 r1
	lw	r30 r1 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	veciprod.2774
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r1 16
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	r_bright.2868
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 12
	mul.s	f0 f1 f2
	lwc1	 r30 f3 32
	mul.s	f2 f3 f2
	lw	r30 r1 20
	swc1	f2 r30 36
	swc1	f0 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	d_vec.2860
	addi	r30 r30 -48
	lw	r30 r31 44
	mov	r2 r1
	lw	r30 r1 8
	sw	r31 r30 44
	addi	r30 r30 48
	jal	veciprod.2774
	addi	r30 r30 -48
	lw	r30 r31 44
	lwc1	 r30 f1 40
	mul.s	f1 f0 f1
	lwc1	 r30 f0 36
	lwc1	 r30 f2 4
	sw	r31 r30 44
	addi	r30 r30 48
	jal	add_light.3071
	addi	r30 r30 -48
	lw	r30 r31 44
beq_cont.8752:
beq_cont.8750:
	j	beq_cont.8748
beq_else.8747:
beq_cont.8748:
	addi	r0 r1 1
	lw	r30 r2 0
	sub	r2 r1 r1
	lwc1	 r30 f0 12
	lwc1	 r30 f1 4
	lw	r30 r2 8
	j	trace_reflections.3075
trace_ray.3080:
	addi	r0 r4 4
	sub	r1 r4 r25
	blez	r25 ble_tail_else.8753
	jr	r31
ble_tail_else.8753:
	swc1	f1 r30 0
	sw	r3 r30 4
	swc1	f0 r30 8
	sw	r1 r30 12
	sw	r2 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r3
	jal	p_surface_ids.2845
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 16
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r2
	jal	judge_intersection.3043
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8755
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r1 r3 2
	lwo	r2 r3 r2
	sw	r1 r30 24
	sw	r2 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r2
	jal	o_reflectiontype.2803
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r2 28
	sw	r1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r1 r2
	jal	o_diffuse.2823
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 8
	mul.s	f0 f1 f0
	lw	r30 r1 28
	lw	r30 r2 16
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	get_nvector.3065
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sw	r31 r30 40
	addi	r30 r30 44
	jal	veccpy.2763
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	lw	r30 r1 28
	sw	r31 r30 40
	addi	r30 r30 44
	jal	utexture.3068
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 4
	lw	r30 r2 24
	mult	r2 r1 r1
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	add	r1 r2 r1
	lw	r30 r2 12
	sll	r2 r3 2
	lw	r30 r4 20
	swo	r1 r4 r3
	lw	r30 r1 4
	sw	r31 r30 40
	addi	r30 r30 44
	jal	p_intersection_points.2843
	addi	r30 r30 -44
	lw	r30 r31 40
	lw	r30 r2 12
	sll	r2 r3 2
	lwo	r1 r3 r1
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r3
	jal	veccpy.2763
	addi	r30 r30 -44
	lw	r30 r31 40
	lw	r30 r1 4
	sw	r31 r30 40
	addi	r30 r30 44
	jal	p_calc_diffuse.2847
	addi	r30 r30 -44
	lw	r30 r31 40
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f0
	lw	r30 r2 28
	sw	r1 r30 40
	swc1	f0 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r2
	jal	o_diffuse.2823
	addi	r30 r30 -52
	lw	r30 r31 48
	lwc1	 r30 f1 44
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8756
	addi	r0 r1 1
	j	bfle_nontail_cont.8757
bfle_nontail_else.8756:
	addi	r0 r1 0
bfle_nontail_cont.8757:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8758
	addi	r0 r1 0
	lw	r30 r2 12
	sll	r2 r3 2
	lw	r30 r4 40
	swo	r1 r4 r3
	j	beq_cont.8759
beq_else.8758:
	addi	r0 r1 1
	lw	r30 r2 12
	sll	r2 r3 2
	lw	r30 r4 40
	swo	r1 r4 r3
	lw	r30 r1 4
	sw	r31 r30 48
	addi	r30 r30 52
	jal	p_energy.2849
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r2 12
	sll	r2 r3 2
	lwo	r1 r3 r3
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -48
	sw	r1 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r4
	mov	r1 r3
	jal	veccpy.2763
	addi	r30 r30 -56
	lw	r30 r31 52
	lw	r30 r1 12
	sll	r1 r2 2
	lw	r30 r3 48
	lwo	r3 r2 r2
	lui	r24 15232
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 36
	mul.s	f0 f1 f0
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r1 r2
	jal	vecscale.2792
	addi	r30 r30 -56
	lw	r30 r31 52
	lw	r30 r1 4
	sw	r31 r30 52
	addi	r30 r30 56
	jal	p_nvectors.2858
	addi	r30 r30 -56
	lw	r30 r31 52
	lw	r30 r2 12
	sll	r2 r3 2
	lwo	r1 r3 r1
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r3
	jal	veccpy.2763
	addi	r30 r30 -56
	lw	r30 r31 52
beq_cont.8759:
	lui	r24 49152
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	lw	r30 r1 16
	swc1	f0 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	jal	veciprod.2774
	addi	r30 r30 -60
	lw	r30 r31 56
	lwc1	 r30 f1 52
	mul.s	f1 f0 f0
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -56
	lw	r30 r1 16
	sw	r31 r30 56
	addi	r30 r30 60
	jal	vecaccum.2782
	addi	r30 r30 -60
	lw	r30 r31 56
	lw	r30 r1 28
	sw	r31 r30 56
	addi	r30 r30 60
	jal	o_hilight.2825
	addi	r30 r30 -60
	lw	r30 r31 56
	lwc1	 r30 f1 8
	mul.s	f1 f0 f0
	addi	r0 r1 0
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -56
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	swc1	f0 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8760
	j	beq_cont.8761
beq_else.8760:
	addi	r30 r30 60
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -60
	addi	r30 r30 60
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -60
	sw	r31 r30 60
	addi	r30 r30 64
	jal	veciprod.2774
	addi	r30 r30 -64
	lw	r30 r31 60
	neg.s	f0 f0
	lwc1	 r30 f1 36
	mul.s	f0 f1 f0
	addi	r30 r30 60
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -60
	lw	r30 r1 16
	swc1	f0 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	jal	veciprod.2774
	addi	r30 r30 -68
	lw	r30 r31 64
	neg.s	f0 f1
	lwc1	 r30 f0 60
	lwc1	 r30 f2 56
	sw	r31 r30 64
	addi	r30 r30 68
	jal	add_light.3071
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.8761:
	addi	r30 r30 64
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -64
	sw	r31 r30 64
	addi	r30 r30 68
	jal	setup_startp.2994
	addi	r30 r30 -68
	lw	r30 r31 64
	addi	r30 r30 64
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_reflections
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -64
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r1
	lwc1	 r30 f0 36
	lwc1	 r30 f1 56
	lw	r30 r2 16
	sw	r31 r30 64
	addi	r30 r30 68
	jal	trace_reflections.3075
	addi	r30 r30 -68
	lw	r30 r31 64
	lui	r24 15820
	ori	r24 r24 52429
	mtc1	r24 f0
	lwc1	 r30 f1 8
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8762
	addi	r0 r1 1
	j	bfle_nontail_cont.8763
bfle_nontail_else.8762:
	addi	r0 r1 0
bfle_nontail_cont.8763:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8764
	addi	r0 r1 4
	lw	r30 r2 12
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.8765
	addi	r0 r1 1
	add	r2 r1 r1
	addi	r0 r3 -1
	sll	r1 r1 2
	lw	r30 r4 20
	swo	r3 r4 r1
	j	ble_nontail_cont.8766
ble_nontail_else.8765:
ble_nontail_cont.8766:
	addi	r0 r1 2
	lw	r30 r3 32
	sub	r3 r1 r25
	beq	r25 r0 beq_tail_else.8767
	jr	r31
beq_tail_else.8767:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	lw	r30 r1 28
	swc1	f0 r30 64
	sw	r31 r30 68
	addi	r30 r30 72
	jal	o_diffuse.2823
	addi	r30 r30 -72
	lw	r30 r31 68
	lwc1	 r30 f1 64
	sub.s	f1 f0 f0
	lwc1	 r30 f1 8
	mul.s	f1 f0 f0
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r1
	addi	r30 r30 68
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -68
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	lwc1	 r30 f2 0
	add.s	f2 f1 f1
	lw	r30 r2 16
	lw	r30 r3 4
	j	trace_ray.3080
beq_tail_else.8764:
	jr	r31
beq_tail_else.8755:
	addi	r0 r1 -1
	lw	r30 r2 12
	sll	r2 r3 2
	lw	r30 r4 20
	swo	r1 r4 r3
	addi	r0 r1 0
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.8770
	addi	r30 r30 68
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -68
	lw	r30 r1 16
	sw	r31 r30 68
	addi	r30 r30 72
	jal	veciprod.2774
	addi	r30 r30 -72
	lw	r30 r31 68
	neg.s	f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8771
	addi	r0 r1 1
	j	bfle_nontail_cont.8772
bfle_nontail_else.8771:
	addi	r0 r1 0
bfle_nontail_cont.8772:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8773
	mul.s	f0 f0 f1
	mul.s	f1 f0 f0
	lwc1	 r30 f1 8
	mul.s	f0 f1 f0
	addi	r30 r30 68
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_beam
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -68
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	mul.s	f0 f1 f0
	addi	r30 r30 68
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -68
	addi	r0 r2 0
	addi	r30 r30 68
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -68
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	add.s	f1 f0 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 68
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -68
	addi	r0 r2 1
	addi	r30 r30 68
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -68
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	add.s	f1 f0 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 68
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -68
	addi	r0 r2 2
	addi	r30 r30 68
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -68
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	add.s	f1 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.8773:
	jr	r31
beq_tail_else.8770:
	jr	r31
trace_diffuse_ray.3086:
	swc1	f0 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	judge_intersection_fast.3057
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8777
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r30 r2 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r2
	jal	d_vec.2860
	addi	r30 r30 -16
	lw	r30 r31 12
	mov	r2 r1
	lw	r30 r1 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	get_nvector.3065
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	lw	r30 r1 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	utexture.3068
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r1 0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	sw	r31 r30 12
	addi	r30 r30 16
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8778
	jr	r31
beq_tail_else.8778:
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sw	r31 r30 12
	addi	r30 r30 16
	jal	veciprod.2774
	addi	r30 r30 -16
	lw	r30 r31 12
	neg.s	f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8780
	addi	r0 r1 1
	j	bfle_nontail_cont.8781
bfle_nontail_else.8780:
	addi	r0 r1 0
bfle_nontail_cont.8781:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8782
	j	beq_cont.8783
beq_else.8782:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.8783:
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	lwc1	 r30 f1 0
	mul.s	f1 f0 f0
	lw	r30 r2 8
	sw	r1 r30 12
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r2
	jal	o_diffuse.2823
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f1 16
	mul.s	f1 f0 f0
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	lw	r30 r1 12
	j	vecaccum.2782
beq_tail_else.8777:
	jr	r31
iter_trace_diffuse_rays.3089:
	addi	r0 r5 0
	sub	r5 r4 r25
	blez	r25 ble_tail_else.8785
	jr	r31
ble_tail_else.8785:
	sll	r4 r5 2
	lwo	r1 r5 r5
	sw	r3 r30 0
	sw	r1 r30 4
	sw	r4 r30 8
	sw	r2 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r5
	jal	d_vec.2860
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r2 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	veciprod.2774
	addi	r30 r30 -20
	lw	r30 r31 16
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8787
	addi	r0 r1 1
	j	bfle_nontail_cont.8788
bfle_nontail_else.8787:
	addi	r0 r1 0
bfle_nontail_cont.8788:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8789
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	sll	r1 r1 2
	lw	r30 r3 4
	lwo	r3 r1 r1
	lui	r24 49942
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 16
	addi	r30 r30 20
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -20
	lw	r30 r31 16
	j	beq_cont.8790
beq_else.8789:
	lw	r30 r1 8
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	lui	r24 17174
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -20
	lw	r30 r31 16
beq_cont.8790:
	addi	r0 r1 2
	lw	r30 r2 8
	sub	r2 r1 r4
	lw	r30 r1 4
	lw	r30 r2 12
	lw	r30 r3 0
	j	iter_trace_diffuse_rays.3089
trace_diffuse_rays.3094:
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r3
	jal	setup_startp.2994
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r4 118
	lw	r30 r1 8
	lw	r30 r2 4
	lw	r30 r3 0
	j	iter_trace_diffuse_rays.3089
trace_diffuse_ray_80percent.3098:
	addi	r0 r4 0
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sub	r1 r4 r25
	beq	r25 r0 beq_else.8791
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r5 0
	sll	r5 r5 2
	lwo	r4 r5 r4
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r4
	jal	trace_diffuse_rays.3094
	addi	r30 r30 -16
	lw	r30 r31 12
	j	beq_cont.8792
beq_else.8791:
beq_cont.8792:
	addi	r0 r1 1
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.8793
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r3 1
	sll	r3 r3 2
	lwo	r1 r3 r1
	lw	r30 r3 4
	lw	r30 r4 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r3
	mov	r3 r4
	jal	trace_diffuse_rays.3094
	addi	r30 r30 -16
	lw	r30 r31 12
	j	beq_cont.8794
beq_else.8793:
beq_cont.8794:
	addi	r0 r1 2
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.8795
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r3 2
	sll	r3 r3 2
	lwo	r1 r3 r1
	lw	r30 r3 4
	lw	r30 r4 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r3
	mov	r3 r4
	jal	trace_diffuse_rays.3094
	addi	r30 r30 -16
	lw	r30 r31 12
	j	beq_cont.8796
beq_else.8795:
beq_cont.8796:
	addi	r0 r1 3
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.8797
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r3 3
	sll	r3 r3 2
	lwo	r1 r3 r1
	lw	r30 r3 4
	lw	r30 r4 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r3
	mov	r3 r4
	jal	trace_diffuse_rays.3094
	addi	r30 r30 -16
	lw	r30 r31 12
	j	beq_cont.8798
beq_else.8797:
beq_cont.8798:
	addi	r0 r1 4
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.8799
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 4
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	trace_diffuse_rays.3094
beq_tail_else.8799:
	jr	r31
calc_diffuse_using_1point.3102:
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	p_received_ray_20percent.2851
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r2 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r2
	jal	p_nvectors.2858
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r2 4
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	p_intersection_points.2843
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r2 4
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r2
	jal	p_energy.2849
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	lw	r30 r3 0
	sll	r3 r4 2
	lw	r30 r5 8
	lwo	r5 r4 r4
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r2
	mov	r2 r4
	jal	veccpy.2763
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r1 4
	sw	r31 r30 24
	addi	r30 r30 28
	jal	p_group_id.2853
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r2 0
	sll	r2 r3 2
	lw	r30 r4 12
	lwo	r4 r3 r3
	sll	r2 r4 2
	lw	r30 r5 16
	lwo	r5 r4 r4
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r3
	mov	r3 r4
	jal	trace_diffuse_ray_80percent.3098
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	lw	r30 r2 0
	sll	r2 r2 2
	lw	r30 r3 20
	lwo	r3 r2 r2
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	j	vecaccumv.2795
calc_diffuse_using_5points.3105:
	sll	r1 r6 2
	lwo	r2 r6 r2
	sw	r5 r30 0
	sw	r4 r30 4
	sw	r3 r30 8
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	p_received_ray_20percent.2851
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 1
	lw	r30 r3 12
	sub	r3 r2 r2
	sll	r2 r2 2
	lw	r30 r4 8
	lwo	r4 r2 r2
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r2
	jal	p_received_ray_20percent.2851
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 12
	sll	r2 r3 2
	lw	r30 r4 8
	lwo	r4 r3 r3
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r3
	jal	p_received_ray_20percent.2851
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 1
	lw	r30 r3 12
	add	r3 r2 r2
	sll	r2 r2 2
	lw	r30 r4 8
	lwo	r4 r2 r2
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r2
	jal	p_received_ray_20percent.2851
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r2 12
	sll	r2 r3 2
	lw	r30 r4 4
	lwo	r4 r3 r3
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r3
	jal	p_received_ray_20percent.2851
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	lw	r30 r3 0
	sll	r3 r4 2
	lw	r30 r5 16
	lwo	r5 r4 r4
	sw	r1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r1 r2
	mov	r2 r4
	jal	veccpy.2763
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	lw	r30 r2 0
	sll	r2 r3 2
	lw	r30 r4 20
	lwo	r4 r3 r3
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r2 r3
	jal	vecadd.2786
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	lw	r30 r2 0
	sll	r2 r3 2
	lw	r30 r4 24
	lwo	r4 r3 r3
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r2 r3
	jal	vecadd.2786
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	lw	r30 r2 0
	sll	r2 r3 2
	lw	r30 r4 28
	lwo	r4 r3 r3
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r2 r3
	jal	vecadd.2786
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	lw	r30 r2 0
	sll	r2 r3 2
	lw	r30 r4 32
	lwo	r4 r3 r3
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r2 r3
	jal	vecadd.2786
	addi	r30 r30 -40
	lw	r30 r31 36
	lw	r30 r1 12
	sll	r1 r1 2
	lw	r30 r2 8
	lwo	r2 r1 r1
	sw	r31 r30 36
	addi	r30 r30 40
	jal	p_energy.2849
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	lw	r30 r3 0
	sll	r3 r3 2
	lwo	r1 r3 r1
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	mov	r28 r2
	mov	r2 r1
	mov	r1 r28
	j	vecaccumv.2795
do_without_neighbors.3111:
	addi	r0 r3 4
	sub	r2 r3 r25
	blez	r25 ble_tail_else.8801
	jr	r31
ble_tail_else.8801:
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	p_surface_ids.2845
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	lw	r30 r3 4
	sll	r3 r4 2
	lwo	r1 r4 r1
	sub	r2 r1 r25
	blez	r25 ble_tail_else.8803
	jr	r31
ble_tail_else.8803:
	lw	r30 r1 0
	sw	r31 r30 8
	addi	r30 r30 12
	jal	p_calc_diffuse.2847
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r2 4
	sll	r2 r3 2
	lwo	r1 r3 r1
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.8805
	lw	r30 r1 0
	sw	r31 r30 8
	addi	r30 r30 12
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -12
	lw	r30 r31 8
	j	beq_cont.8806
beq_else.8805:
beq_cont.8806:
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r2
	lw	r30 r1 0
	j	do_without_neighbors.3111
neighbors_exist.3114:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 1
	sll	r4 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 1
	add	r2 r4 r4
	sub	r3 r4 r25
	blez	r25 ble_tail_else.8807
	addi	r0 r3 0
	sub	r2 r3 r25
	blez	r25 ble_tail_else.8808
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 1
	add	r1 r3 r3
	sub	r2 r3 r25
	blez	r25 ble_tail_else.8809
	addi	r0 r2 0
	sub	r1 r2 r25
	blez	r25 ble_tail_else.8810
	addi	r0 r1 1
	jr	r31
ble_tail_else.8810:
	addi	r0 r1 0
	jr	r31
ble_tail_else.8809:
	addi	r0 r1 0
	jr	r31
ble_tail_else.8808:
	addi	r0 r1 0
	jr	r31
ble_tail_else.8807:
	addi	r0 r1 0
	jr	r31
get_surface_id.3118:
	sw	r2 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	p_surface_ids.2845
	addi	r30 r30 -8
	lw	r30 r31 4
	lw	r30 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	jr	r31
neighbors_are_available.3121:
	sll	r1 r6 2
	lwo	r3 r6 r6
	sw	r3 r30 0
	sw	r4 r30 4
	sw	r5 r30 8
	sw	r2 r30 12
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r5
	mov	r1 r6
	jal	get_surface_id.3118
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 16
	sll	r2 r3 2
	lw	r30 r4 12
	lwo	r4 r3 r3
	lw	r30 r4 8
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r4
	mov	r1 r3
	jal	get_surface_id.3118
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r2 20
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8811
	addi	r0 r1 0
	jr	r31
beq_tail_else.8811:
	lw	r30 r1 16
	sll	r1 r3 2
	lw	r30 r4 4
	lwo	r4 r3 r3
	lw	r30 r4 8
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r4
	mov	r1 r3
	jal	get_surface_id.3118
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r2 20
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8812
	addi	r0 r1 0
	jr	r31
beq_tail_else.8812:
	addi	r0 r1 1
	lw	r30 r3 16
	sub	r3 r1 r1
	sll	r1 r1 2
	lw	r30 r4 0
	lwo	r4 r1 r1
	lw	r30 r5 8
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r5
	jal	get_surface_id.3118
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r2 20
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8813
	addi	r0 r1 0
	jr	r31
beq_tail_else.8813:
	addi	r0 r1 1
	lw	r30 r3 16
	add	r3 r1 r1
	sll	r1 r1 2
	lw	r30 r3 0
	lwo	r3 r1 r1
	lw	r30 r3 8
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r3
	jal	get_surface_id.3118
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r2 20
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8814
	addi	r0 r1 0
	jr	r31
beq_tail_else.8814:
	addi	r0 r1 1
	jr	r31
try_exploit_neighbors.3127:
	sll	r1 r7 2
	lwo	r4 r7 r7
	addi	r0 r8 4
	sub	r6 r8 r25
	blez	r25 ble_tail_else.8815
	jr	r31
ble_tail_else.8815:
	addi	r0 r8 0
	sw	r2 r30 0
	sw	r7 r30 4
	sw	r6 r30 8
	sw	r5 r30 12
	sw	r4 r30 16
	sw	r3 r30 20
	sw	r1 r30 24
	sw	r8 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r6
	mov	r1 r7
	jal	get_surface_id.3118
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r2 28
	sub	r2 r1 r25
	blez	r25 ble_tail_else.8817
	jr	r31
ble_tail_else.8817:
	lw	r30 r1 24
	lw	r30 r2 20
	lw	r30 r3 16
	lw	r30 r4 12
	lw	r30 r5 8
	sw	r31 r30 32
	addi	r30 r30 36
	jal	neighbors_are_available.3121
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8819
	lw	r30 r1 4
	sw	r31 r30 32
	addi	r30 r30 36
	jal	p_calc_diffuse.2847
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r5 8
	sll	r5 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8820
	lw	r30 r1 24
	lw	r30 r2 20
	lw	r30 r3 16
	lw	r30 r4 12
	sw	r31 r30 32
	addi	r30 r30 36
	jal	calc_diffuse_using_5points.3105
	addi	r30 r30 -36
	lw	r30 r31 32
	j	beq_cont.8821
beq_else.8820:
beq_cont.8821:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r6
	lw	r30 r1 24
	lw	r30 r2 0
	lw	r30 r3 20
	lw	r30 r4 16
	lw	r30 r5 12
	j	try_exploit_neighbors.3127
beq_tail_else.8819:
	lw	r30 r1 24
	sll	r1 r1 2
	lw	r30 r2 16
	lwo	r2 r1 r1
	lw	r30 r2 8
	j	do_without_neighbors.3111
write_ppm_header.3134:
	addi	r0 r1 80
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_char
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 51
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_char
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 10
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_char
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_int
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 32
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_char
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 1
	sll	r2 r2 2
	lwo	r1 r2 r1
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_int
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 32
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_char
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 255
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_int
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 10
	j	min_caml_print_char
write_rgb_element.3136:
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_int_of_float
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.8822
	addi	r0 r1 255
	j	ble_nontail_cont.8823
ble_nontail_else.8822:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.8824
	addi	r0 r1 0
	j	ble_nontail_cont.8825
ble_nontail_else.8824:
ble_nontail_cont.8825:
ble_nontail_cont.8823:
	j	min_caml_print_int
write_rgb.3138:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	write_rgb_element.3136
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 32
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_char
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	write_rgb_element.3136
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 32
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_char
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	write_rgb_element.3136
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 10
	j	min_caml_print_char
pretrace_diffuse_rays.3140:
	addi	r0 r3 4
	sub	r2 r3 r25
	blez	r25 ble_tail_else.8826
	jr	r31
ble_tail_else.8826:
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	get_surface_id.3118
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.8828
	jr	r31
ble_tail_else.8828:
	lw	r30 r1 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	p_calc_diffuse.2847
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r2 0
	sll	r2 r3 2
	lwo	r1 r3 r1
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.8830
	lw	r30 r1 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	p_group_id.2853
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -8
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r2
	jal	vecbzero.2761
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r1 4
	sw	r31 r30 12
	addi	r30 r30 16
	jal	p_nvectors.2858
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r2 4
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	p_intersection_points.2843
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	lw	r30 r3 8
	sll	r3 r3 2
	lwo	r2 r3 r2
	lw	r30 r3 0
	sll	r3 r4 2
	lw	r30 r5 12
	lwo	r5 r4 r4
	sll	r3 r5 2
	lwo	r1 r5 r1
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r3 r1
	mov	r1 r2
	mov	r2 r4
	jal	trace_diffuse_rays.3094
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r1 4
	sw	r31 r30 16
	addi	r30 r30 20
	jal	p_received_ray_20percent.2851
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r2 0
	sll	r2 r3 2
	lwo	r1 r3 r1
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	jal	veccpy.2763
	addi	r30 r30 -20
	lw	r30 r31 16
	j	beq_cont.8831
beq_else.8830:
beq_cont.8831:
	addi	r0 r1 1
	lw	r30 r2 0
	add	r2 r1 r2
	lw	r30 r1 4
	j	pretrace_diffuse_rays.3140
pretrace_pixels.3143:
	addi	r0 r4 0
	sub	r4 r2 r25
	blez	r25 ble_tail_else.8832
	jr	r31
ble_tail_else.8832:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_scan_pitch
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f3
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_center
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r5 0
	sll	r5 r5 2
	lwo	r4 r5 r4
	sub	r2 r4 r4
	sw	r3 r30 0
	sw	r1 r30 4
	sw	r2 r30 8
	swc1	f2 r30 12
	swc1	f1 r30 16
	swc1	f0 r30 20
	swc1	f3 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r4
	jal	min_caml_float_of_int
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	mul.s	f1 f0 f0
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_ptrace_dirvec
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 0
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f1
	lwc1	 r30 f2 20
	add.s	f1 f2 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_ptrace_dirvec
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 1
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f1
	lwc1	 r30 f3 16
	add.s	f1 f3 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_ptrace_dirvec
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 2
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f0
	lwc1	 r30 f1 12
	add.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_ptrace_dirvec
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 0
	sw	r31 r30 28
	addi	r30 r30 32
	jal	vecunit_sgn.2771
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	sw	r31 r30 28
	addi	r30 r30 32
	jal	vecbzero.2761
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_viewpoint
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	sw	r31 r30 28
	addi	r30 r30 32
	jal	veccpy.2763
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r1 0
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_ptrace_dirvec
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	lw	r30 r3 8
	sll	r3 r4 2
	lw	r30 r5 4
	lwo	r5 r4 r4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r3 r4
	jal	trace_ray.3080
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 8
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r2
	jal	p_rgb.2841
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	sw	r31 r30 28
	addi	r30 r30 32
	jal	veccpy.2763
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 8
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	lw	r30 r4 0
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r2
	mov	r2 r4
	jal	p_set_group_id.2855
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 8
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 0
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r2
	mov	r2 r4
	jal	pretrace_diffuse_rays.3140
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r1 1
	lw	r30 r2 8
	sub	r2 r1 r1
	addi	r0 r2 1
	lw	r30 r3 0
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r3
	jal	add_mod5.2750
	addi	r30 r30 -36
	lw	r30 r31 32
	mov	r3 r1
	lwc1	 r30 f0 20
	lwc1	 r30 f1 16
	lwc1	 r30 f2 12
	lw	r30 r1 4
	lw	r30 r2 28
	j	pretrace_pixels.3143
pretrace_line.3150:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_scan_pitch
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_center
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r5 1
	sll	r5 r5 2
	lwo	r4 r5 r4
	sub	r2 r4 r2
	sw	r3 r30 0
	sw	r1 r30 4
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r2
	jal	min_caml_float_of_int
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f1 8
	mul.s	f1 f0 f0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	mul.s	f0 f1 f1
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	add.s	f1 f2 f1
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	mul.s	f0 f2 f2
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	add.s	f2 f3 f2
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	mul.s	f0 f3 f0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	add.s	f0 f3 f0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r2
	lw	r30 r1 4
	lw	r30 r3 0
	mov.s	f2 f31
	mov.s	f0 f2
	mov.s	f1 f0
	mov.s	f31 f1
	j	pretrace_pixels.3143
scan_pixel.3154:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r7 0
	sll	r7 r7 2
	lwo	r6 r7 r6
	sub	r6 r1 r25
	blez	r25 ble_tail_else.8834
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r1 r7 2
	lwo	r4 r7 r7
	sw	r3 r30 0
	sw	r4 r30 4
	sw	r5 r30 8
	sw	r2 r30 12
	sw	r1 r30 16
	sw	r6 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r7
	jal	p_rgb.2841
	addi	r30 r30 -28
	lw	r30 r31 24
	mov	r2 r1
	lw	r30 r1 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	veccpy.2763
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r1 16
	lw	r30 r2 12
	lw	r30 r3 8
	sw	r31 r30 24
	addi	r30 r30 28
	jal	neighbors_exist.3114
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8835
	addi	r0 r6 0
	lw	r30 r1 16
	lw	r30 r2 12
	lw	r30 r3 0
	lw	r30 r4 4
	lw	r30 r5 8
	sw	r31 r30 24
	addi	r30 r30 28
	jal	try_exploit_neighbors.3127
	addi	r30 r30 -28
	lw	r30 r31 24
	j	beq_cont.8836
beq_else.8835:
	lw	r30 r1 16
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r2
	mov	r2 r4
	jal	do_without_neighbors.3111
	addi	r30 r30 -28
	lw	r30 r31 24
beq_cont.8836:
	sw	r31 r30 24
	addi	r30 r30 28
	jal	write_rgb.3138
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lw	r30 r2 12
	lw	r30 r3 0
	lw	r30 r4 4
	lw	r30 r5 8
	j	scan_pixel.3154
ble_tail_else.8834:
	jr	r31
scan_line.3160:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r7 1
	sll	r7 r7 2
	lwo	r6 r7 r6
	sub	r6 r1 r25
	blez	r25 ble_tail_else.8838
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r7 1
	sll	r7 r7 2
	lwo	r6 r7 r6
	addi	r0 r7 1
	sub	r6 r7 r6
	sw	r5 r30 0
	sw	r4 r30 4
	sw	r3 r30 8
	sw	r2 r30 12
	sw	r1 r30 16
	sub	r6 r1 r25
	blez	r25 ble_nontail_else.8839
	addi	r0 r6 1
	add	r1 r6 r6
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r3 r5
	mov	r2 r6
	mov	r1 r4
	jal	pretrace_line.3150
	addi	r30 r30 -24
	lw	r30 r31 20
	j	ble_nontail_cont.8840
ble_nontail_else.8839:
ble_nontail_cont.8840:
	addi	r0 r1 0
	lw	r30 r2 16
	lw	r30 r3 12
	lw	r30 r4 8
	lw	r30 r5 4
	sw	r31 r30 20
	addi	r30 r30 24
	jal	scan_pixel.3154
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	addi	r0 r2 2
	lw	r30 r3 0
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r3
	jal	add_mod5.2750
	addi	r30 r30 -28
	lw	r30 r31 24
	mov	r5 r1
	lw	r30 r1 20
	lw	r30 r2 8
	lw	r30 r3 4
	lw	r30 r4 12
	j	scan_line.3160
ble_tail_else.8838:
	jr	r31
create_float5x3array.3166:
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_create_float_array
	addi	r30 r30 -4
	lw	r30 r31 0
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_create_array
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r2 1
	addi	r0 r3 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r2 4
	sll	r2 r2 2
	lw	r30 r3 0
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r2 8
	sll	r2 r2 2
	lw	r30 r3 0
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r2 12
	sll	r2 r2 2
	lw	r30 r3 0
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 16
	sll	r2 r2 2
	lw	r30 r3 0
	swo	r1 r3 r2
	mov	r1 r3
	jr	r31
create_pixel.3168:
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_create_float_array
	addi	r30 r30 -4
	lw	r30 r31 0
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	create_float5x3array.3166
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 5
	addi	r0 r3 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r2
	mov	r2 r3
	jal	min_caml_create_array
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 5
	addi	r0 r3 0
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r2
	mov	r2 r3
	jal	min_caml_create_array
	addi	r30 r30 -16
	lw	r30 r31 12
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	create_float5x3array.3166
	addi	r30 r30 -20
	lw	r30 r31 16
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	create_float5x3array.3166
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 1
	addi	r0 r3 0
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r2
	mov	r2 r3
	jal	min_caml_create_array
	addi	r30 r30 -28
	lw	r30 r31 24
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	create_float5x3array.3166
	addi	r30 r30 -32
	lw	r30 r31 28
	mov	r2 r27
	addi	r27 r27 32
	sw	r1 r2 28
	lw	r30 r1 24
	sw	r1 r2 24
	lw	r30 r1 20
	sw	r1 r2 20
	lw	r30 r1 16
	sw	r1 r2 16
	lw	r30 r1 12
	sw	r1 r2 12
	lw	r30 r1 8
	sw	r1 r2 8
	lw	r30 r1 4
	sw	r1 r2 4
	lw	r30 r1 0
	sw	r1 r2 0
	mov	r1 r2
	jr	r31
init_line_elements.3170:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.8842
	jr	r31
ble_tail_else.8842:
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	create_pixel.3168
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r2 4
	sll	r2 r3 2
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r2
	mov	r1 r4
	j	init_line_elements.3170
create_pixelline.3173:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	create_pixel.3168
	addi	r30 r30 -8
	lw	r30 r31 4
	mov	r2 r1
	lw	r30 r1 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_create_array
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r30 r30 4
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -4
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 2
	sub	r2 r3 r2
	j	init_line_elements.3170
tan.3175:
	swc1	f0 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_sin
	addi	r30 r30 -8
	lw	r30 r31 4
	lwc1	 r30 f1 0
	swc1	f0 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov.s	f1 f0
	jal	min_caml_cos
	addi	r30 r30 -12
	lw	r30 r31 8
	lwc1	 r30 f1 4
	div.s	f1 f0 f0
	jr	r31
adjust_position.3177:
	mul.s	f0 f0 f0
	lui	r24 15820
	ori	r24 r24 52429
	mtc1	r24 f2
	add.s	f0 f2 f0
	swc1	f1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_sqrt
	addi	r30 r30 -8
	lw	r30 r31 4
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f1
	swc1	f0 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov.s	f1 f0
	jal	min_caml_atan
	addi	r30 r30 -12
	lw	r30 r31 8
	lwc1	 r30 f1 0
	mul.s	f0 f1 f0
	sw	r31 r30 8
	addi	r30 r30 12
	jal	tan.3175
	addi	r30 r30 -12
	lw	r30 r31 8
	lwc1	 r30 f1 4
	mul.s	f0 f1 f0
	jr	r31
calc_dirvec.3180:
	addi	r0 r4 5
	sub	r4 r1 r25
	blez	r25 ble_tail_else.8843
	swc1	f2 r30 0
	sw	r3 r30 4
	sw	r2 r30 8
	swc1	f3 r30 12
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f1 f0
	mov.s	f2 f1
	jal	adjust_position.3177
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lwc1	 r30 f1 12
	swc1	f0 r30 20
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	adjust_position.3177
	addi	r30 r30 -32
	lw	r30 r31 28
	mov.s	f0 f1
	lwc1	 r30 f0 20
	lwc1	 r30 f2 0
	lwc1	 r30 f3 12
	lw	r30 r1 24
	lw	r30 r2 8
	lw	r30 r3 4
	j	calc_dirvec.3180
ble_tail_else.8843:
	mul.s	f0 f0 f2
	mul.s	f1 f1 f3
	add.s	f2 f3 f2
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f3
	add.s	f2 f3 f2
	sw	r3 r30 4
	sw	r2 r30 8
	swc1	f1 r30 28
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov.s	f2 f0
	jal	min_caml_sqrt
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 32
	div.s	f1 f0 f1
	lwc1	 r30 f2 28
	div.s	f2 f0 f2
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f3
	div.s	f3 f0 f0
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	lw	r30 r2 8
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r30 r2 4
	sll	r2 r3 2
	lwo	r1 r3 r3
	sw	r1 r30 36
	swc1	f0 r30 40
	swc1	f2 r30 44
	swc1	f1 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r1 r3
	jal	d_vec.2860
	addi	r30 r30 -56
	lw	r30 r31 52
	lwc1	 r30 f0 48
	lwc1	 r30 f1 44
	lwc1	 r30 f2 40
	sw	r31 r30 52
	addi	r30 r30 56
	jal	vecset.2753
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 40
	lw	r30 r2 4
	add	r2 r1 r1
	sll	r1 r1 2
	lw	r30 r3 36
	lwo	r3 r1 r1
	sw	r31 r30 52
	addi	r30 r30 56
	jal	d_vec.2860
	addi	r30 r30 -56
	lw	r30 r31 52
	lwc1	 r30 f0 44
	neg.s	f0 f2
	lwc1	 r30 f1 48
	lwc1	 r30 f3 40
	sw	r31 r30 52
	addi	r30 r30 56
	mov.s	f1 f0
	mov.s	f3 f1
	jal	vecset.2753
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 80
	lw	r30 r2 4
	add	r2 r1 r1
	sll	r1 r1 2
	lw	r30 r3 36
	lwo	r3 r1 r1
	sw	r31 r30 52
	addi	r30 r30 56
	jal	d_vec.2860
	addi	r30 r30 -56
	lw	r30 r31 52
	lwc1	 r30 f0 48
	neg.s	f0 f1
	lwc1	 r30 f2 44
	neg.s	f2 f3
	lwc1	 r30 f4 40
	sw	r31 r30 52
	addi	r30 r30 56
	mov.s	f3 f2
	mov.s	f4 f0
	jal	vecset.2753
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	sll	r1 r1 2
	lw	r30 r3 36
	lwo	r3 r1 r1
	sw	r31 r30 52
	addi	r30 r30 56
	jal	d_vec.2860
	addi	r30 r30 -56
	lw	r30 r31 52
	lwc1	 r30 f0 48
	neg.s	f0 f1
	lwc1	 r30 f2 44
	neg.s	f2 f3
	lwc1	 r30 f4 40
	neg.s	f4 f5
	sw	r31 r30 52
	addi	r30 r30 56
	mov.s	f5 f2
	mov.s	f1 f0
	mov.s	f3 f1
	jal	vecset.2753
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 41
	lw	r30 r2 4
	add	r2 r1 r1
	sll	r1 r1 2
	lw	r30 r3 36
	lwo	r3 r1 r1
	sw	r31 r30 52
	addi	r30 r30 56
	jal	d_vec.2860
	addi	r30 r30 -56
	lw	r30 r31 52
	lwc1	 r30 f0 48
	neg.s	f0 f1
	lwc1	 r30 f2 40
	neg.s	f2 f3
	lwc1	 r30 f4 44
	sw	r31 r30 52
	addi	r30 r30 56
	mov.s	f4 f2
	mov.s	f1 f0
	mov.s	f3 f1
	jal	vecset.2753
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 81
	lw	r30 r2 4
	add	r2 r1 r1
	sll	r1 r1 2
	lw	r30 r2 36
	lwo	r2 r1 r1
	sw	r31 r30 52
	addi	r30 r30 56
	jal	d_vec.2860
	addi	r30 r30 -56
	lw	r30 r31 52
	lwc1	 r30 f0 40
	neg.s	f0 f0
	lwc1	 r30 f1 48
	lwc1	 r30 f2 44
	j	vecset.2753
calc_dirvecs.3188:
	addi	r0 r4 0
	sub	r4 r1 r25
	blez	r25 ble_tail_else.8844
	jr	r31
ble_tail_else.8844:
	sw	r1 r30 0
	swc1	f0 r30 4
	sw	r3 r30 8
	sw	r2 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_float_of_int
	addi	r30 r30 -20
	lw	r30 r31 16
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16230
	ori	r24 r24 26214
	mtc1	r24 f1
	sub.s	f0 f1 f2
	addi	r0 r1 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	lwc1	 r30 f3 4
	lw	r30 r2 12
	lw	r30 r3 8
	sw	r31 r30 16
	addi	r30 r30 20
	jal	calc_dirvec.3180
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r1 0
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_float_of_int
	addi	r30 r30 -20
	lw	r30 r31 16
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 15820
	ori	r24 r24 52429
	mtc1	r24 f1
	add.s	f0 f1 f2
	addi	r0 r1 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	addi	r0 r2 2
	lw	r30 r3 8
	add	r3 r2 r2
	lwc1	 r30 f3 4
	lw	r30 r4 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r3 r2
	mov	r2 r4
	jal	calc_dirvec.3180
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 1
	lw	r30 r2 0
	sub	r2 r1 r1
	addi	r0 r2 1
	lw	r30 r3 12
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r3
	jal	add_mod5.2750
	addi	r30 r30 -24
	lw	r30 r31 20
	mov	r2 r1
	lwc1	 r30 f0 4
	lw	r30 r1 16
	lw	r30 r3 8
	j	calc_dirvecs.3188
calc_dirvec_rows.3193:
	addi	r0 r4 0
	sub	r4 r1 r25
	blez	r25 ble_tail_else.8846
	jr	r31
ble_tail_else.8846:
	sw	r1 r30 0
	sw	r3 r30 4
	sw	r2 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_float_of_int
	addi	r30 r30 -16
	lw	r30 r31 12
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16230
	ori	r24 r24 26214
	mtc1	r24 f1
	sub.s	f0 f1 f0
	addi	r0 r1 4
	lw	r30 r2 8
	lw	r30 r3 4
	sw	r31 r30 12
	addi	r30 r30 16
	jal	calc_dirvecs.3188
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r1 1
	lw	r30 r2 0
	sub	r2 r1 r1
	addi	r0 r2 2
	lw	r30 r3 8
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r3
	jal	add_mod5.2750
	addi	r30 r30 -20
	lw	r30 r31 16
	mov	r2 r1
	addi	r0 r1 4
	lw	r30 r3 4
	add	r3 r1 r3
	lw	r30 r1 12
	j	calc_dirvec_rows.3193
create_dirvec.3197:
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_create_float_array
	addi	r30 r30 -4
	lw	r30 r31 0
	mov	r2 r1
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r1 r3 r1
	sw	r2 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_create_array
	addi	r30 r30 -8
	lw	r30 r31 4
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 0
	sw	r1 r2 0
	mov	r1 r2
	jr	r31
create_dirvec_elements.3199:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.8848
	jr	r31
ble_tail_else.8848:
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	create_dirvec.3197
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r2 4
	sll	r2 r3 2
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r2
	mov	r1 r4
	j	create_dirvec_elements.3199
create_dirvecs.3202:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.8850
	jr	r31
ble_tail_else.8850:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 120
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r3 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	create_dirvec.3197
	addi	r30 r30 -16
	lw	r30 r31 12
	mov	r2 r1
	lw	r30 r1 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_create_array
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r2 4
	sll	r2 r3 2
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r2 r3 2
	lwo	r1 r3 r1
	addi	r0 r3 118
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r3
	jal	create_dirvec_elements.3199
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r1 1
	lw	r30 r2 4
	sub	r2 r1 r1
	j	create_dirvecs.3202
init_dirvec_constants.3204:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.8852
	jr	r31
ble_tail_else.8852:
	sll	r2 r3 2
	lwo	r1 r3 r3
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	setup_dirvec_constants.2989
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r1 1
	lw	r30 r2 4
	sub	r2 r1 r2
	lw	r30 r1 0
	j	init_dirvec_constants.3204
init_vecset_constants.3207:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.8854
	jr	r31
ble_tail_else.8854:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r1 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 119
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	mov	r1 r2
	mov	r2 r3
	jal	init_dirvec_constants.3204
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r1 1
	lw	r30 r2 0
	sub	r2 r1 r1
	j	init_vecset_constants.3207
init_dirvecs.3209:
	addi	r0 r1 4
	sw	r31 r30 0
	addi	r30 r30 4
	jal	create_dirvecs.3202
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 9
	addi	r0 r2 0
	addi	r0 r3 0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	calc_dirvec_rows.3193
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 4
	j	init_vecset_constants.3207
add_reflection.3211:
	sw	r1 r30 0
	sw	r2 r30 4
	swc1	f0 r30 8
	swc1	f3 r30 12
	swc1	f2 r30 16
	swc1	f1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	create_dirvec.3197
	addi	r30 r30 -28
	lw	r30 r31 24
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	d_vec.2860
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f0 20
	lwc1	 r30 f1 16
	lwc1	 r30 f2 12
	sw	r31 r30 28
	addi	r30 r30 32
	jal	vecset.2753
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	setup_dirvec_constants.2989
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	mov	r2 r27
	addi	r27 r27 16
	lwc1	 r30 f0 8
	swc1	f0 r2 8
	lw	r30 r3 24
	sw	r3 r2 4
	lw	r30 r3 4
	sw	r3 r2 0
	lw	r30 r3 0
	sll	r3 r3 2
	swo	r2 r1 r3
	jr	r31
setup_rect_reflection.3218:
	addi	r0 r3 4
	mult	r1 r3 r1
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_reflections
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r3 r4 r3
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r3 r30 0
	sw	r1 r30 4
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r2
	jal	o_diffuse.2823
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f1 8
	sub.s	f1 f0 f0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	neg.s	f1 f1
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	neg.s	f2 f2
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	neg.s	f3 f3
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f4
	lw	r30 r3 0
	swc1	f2 r30 12
	swc1	f3 r30 16
	swc1	f1 r30 20
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r1
	mov	r1 r3
	mov.s	f4 f1
	jal	add_reflection.3211
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r1 1
	lw	r30 r2 0
	add	r2 r1 r1
	addi	r0 r3 2
	lw	r30 r4 4
	add	r4 r3 r3
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r5 r6 f2
	lwc1	 r30 f0 24
	lwc1	 r30 f1 20
	lwc1	 r30 f3 16
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r3
	jal	add_reflection.3211
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r1 2
	lw	r30 r2 0
	add	r2 r1 r1
	addi	r0 r3 3
	lw	r30 r4 4
	add	r4 r3 r3
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r4 r5 f3
	lwc1	 r30 f0 24
	lwc1	 r30 f1 20
	lwc1	 r30 f2 12
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r3
	jal	add_reflection.3211
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_reflections
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 0
	addi	r0 r3 3
	lw	r30 r4 0
	add	r4 r3 r3
	sll	r2 r2 2
	swo	r3 r1 r2
	jr	r31
setup_surface_reflection.3221:
	addi	r0 r3 4
	mult	r1 r3 r1
	addi	r0 r3 1
	add	r1 r3 r1
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_reflections
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r3 r4 r3
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 0
	sw	r3 r30 4
	sw	r2 r30 8
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	o_diffuse.2823
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	sub.s	f1 f0 f0
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	lw	r30 r2 8
	swc1	f0 r30 16
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r2
	jal	o_param_abc.2815
	addi	r30 r30 -28
	lw	r30 r31 24
	mov	r2 r1
	lw	r30 r1 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	veciprod.2774
	addi	r30 r30 -28
	lw	r30 r31 24
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	lw	r30 r1 8
	swc1	f0 r30 24
	swc1	f1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	o_param_a.2809
	addi	r30 r30 -36
	lw	r30 r31 32
	lwc1	 r30 f1 28
	mul.s	f1 f0 f0
	lwc1	 r30 f1 24
	mul.s	f0 f1 f0
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	sub.s	f0 f2 f0
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lw	r30 r1 8
	swc1	f0 r30 32
	swc1	f2 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	o_param_b.2811
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 36
	mul.s	f1 f0 f0
	lwc1	 r30 f1 24
	mul.s	f0 f1 f0
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	sub.s	f0 f2 f0
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lw	r30 r1 8
	swc1	f0 r30 40
	swc1	f2 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	jal	o_param_c.2813
	addi	r30 r30 -52
	lw	r30 r31 48
	lwc1	 r30 f1 44
	mul.s	f1 f0 f0
	lwc1	 r30 f1 24
	mul.s	f0 f1 f0
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f0 f1 f3
	lwc1	 r30 f0 16
	lwc1	 r30 f1 32
	lwc1	 r30 f2 40
	lw	r30 r1 4
	lw	r30 r2 0
	sw	r31 r30 48
	addi	r30 r30 52
	jal	add_reflection.3211
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_reflections
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r2 0
	addi	r0 r3 1
	lw	r30 r4 4
	add	r4 r3 r3
	sll	r2 r2 2
	swo	r3 r1 r2
	jr	r31
setup_reflections.3224:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.8859
	jr	r31
ble_tail_else.8859:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r1 r3 2
	lwo	r2 r3 r2
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r2
	jal	o_reflectiontype.2803
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 2
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8861
	jr	r31
beq_tail_else.8861:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	lw	r30 r1 4
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	o_diffuse.2823
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f1 8
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.8863
	addi	r0 r1 1
	j	bfle_nontail_cont.8864
bfle_nontail_else.8863:
	addi	r0 r1 0
bfle_nontail_cont.8864:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8865
	lw	r30 r1 4
	sw	r31 r30 12
	addi	r30 r30 16
	jal	o_form.2801
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 1
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8866
	addi	r0 r2 2
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8867
	jr	r31
beq_tail_else.8867:
	lw	r30 r1 0
	lw	r30 r2 4
	j	setup_surface_reflection.3221
beq_tail_else.8866:
	lw	r30 r1 0
	lw	r30 r2 4
	j	setup_rect_reflection.3218
beq_tail_else.8865:
	jr	r31
rt.3226:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	sll	r4 r4 2
	swo	r1 r3 r4
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 1
	sll	r4 r4 2
	swo	r2 r3 r4
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_center
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	addi	r0 r5 2
	div	r1 r5 r5
	sll	r4 r4 2
	swo	r5 r3 r4
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_center
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 1
	addi	r0 r5 2
	div	r2 r5 r2
	sll	r4 r4 2
	swo	r2 r3 r4
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_scan_pitch
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	lui	r24 17152
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r2 r30 0
	sw	r3 r30 4
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_float_of_int
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f1 8
	div.s	f1 f0 f0
	lw	r30 r1 4
	sll	r1 r1 2
	lw	r30 r2 0
	swoc1	f0 r2 r1
	sw	r31 r30 12
	addi	r30 r30 16
	jal	create_pixelline.3173
	addi	r30 r30 -16
	lw	r30 r31 12
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	create_pixelline.3173
	addi	r30 r30 -20
	lw	r30 r31 16
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	create_pixelline.3173
	addi	r30 r30 -24
	lw	r30 r31 20
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	read_parameter.2891
	addi	r30 r30 -28
	lw	r30 r31 24
	sw	r31 r30 24
	addi	r30 r30 28
	jal	write_ppm_header.3134
	addi	r30 r30 -28
	lw	r30 r31 24
	sw	r31 r30 24
	addi	r30 r30 28
	jal	init_dirvecs.3209
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light_dirvec
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	sw	r31 r30 24
	addi	r30 r30 28
	jal	d_vec.2860
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sw	r31 r30 24
	addi	r30 r30 28
	jal	veccpy.2763
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light_dirvec
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	sw	r31 r30 24
	addi	r30 r30 28
	jal	setup_dirvec_constants.2989
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r1
	sw	r31 r30 24
	addi	r30 r30 28
	jal	setup_reflections.3224
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	addi	r0 r3 0
	lw	r30 r1 16
	sw	r31 r30 24
	addi	r30 r30 28
	jal	pretrace_line.3150
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 0
	addi	r0 r5 2
	lw	r30 r2 12
	lw	r30 r3 16
	lw	r30 r4 20
	j	scan_line.3160
_min_caml_start:
	lui	r27 32
	jal	min_caml_globals
	addi	r0 r31 0
	addi	r0 r1 512
	addi	r0 r2 512
	sw	r31 r30 0
	addi	r30 r30 4
	jal	rt.3226
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r0 0
halt
