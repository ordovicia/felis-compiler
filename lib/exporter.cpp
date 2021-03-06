#include<cstdio>
#include<string>
#include<set>

using namespace std;

string strs[] = {
	"fequal", "fless", "fispos", "fisneg", "fiszero",
	"fhalf", "fsqr",
	"fabs", "fneg", "sqrt", "floor",
	"cos", "sin", "atan",
	"int_of_float"
};

const int N = 15;

int main(){
	char buf[300];
	while(fgets(buf, 300, stdin) != NULL){
		char ch[300];
		sscanf(buf, "%s", ch);
		string s = ch;
		if(s == "_min_caml_start:") break;
		for(int i = 0; i < N; ++i){
			if(s.substr(0, strs[i].size()) == strs[i] && (s.size() > strs[i].size() && s[strs[i].size()] == '.')){
				printf("%s:\n", ("min_caml_" + strs[i]).c_str());
			}
		}
		printf("%s", buf);
	}
	return 0;
}