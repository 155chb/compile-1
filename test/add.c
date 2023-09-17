#include <stdio.h>
#include <stdlib.h>

int add1(int x, int y){
	return x+y;
}

int add2(int *x, int *y){
	return *x+*y;
}

float add3(float x, float y){
	return x+y;
}

int add4(int* arr){
	return arr[0]+arr[1];
}

int main(){
	int x=1,y=2;
	add1(x,y);
	return 0;
}
