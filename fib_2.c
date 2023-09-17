#include <stdio.h>
#include <stdlib.h>

int main(){
	int n=0,num0=0,num1=0,i=0,result=0,temp=0;
	scanf("%d",&n);
	num0=1,num1=1;
	while(i<n){
		result=num0+num1;
		temp=num0;
		num0=num1;
		num1=result;
		i++;
	}
	printf("%d\n",result);
	return 0;
}
