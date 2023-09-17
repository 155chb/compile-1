#include <stdio.h>
#include <stdlib.h>

int fib(int n);

int main(){
	int n=0, result=0;
	scanf("%d", &n);
	result=fib(n);
	printf("%d\n",result);
	return 0;
}

int fib(int n){
	if(n<=2)
		return 1;
	int result=0;
	result=fib(n-1)+fib(n-2);
	return result;
}

