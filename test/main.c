#include <stdio.h>
#include <stdlib.h>

int main(){
	int a,b,c;
	scanf("%d",&b);
	a=2, c=1;
	while(a<=b){
		c*=a;
		a++;
	}
	printf("%d\n",c);
	return 0;
}
