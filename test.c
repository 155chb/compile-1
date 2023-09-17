#include "test.h"

int globalStaticVar = 0;

int main() {
	// 基本数据类型
	int i = 42;
	char c = 'A';
	float f = 3.14159;
	double d = 3.14159;
	long l = 123456789012345;
	long long ll = 12345678901234567890;
	char* str = "Hello World!";

	printf("----- Basic Data Types -----\n");
	printf("1. Integer: %d\n", i);
	printf("2. Char: %c\n", c);
	printf("3. Float: %f\n", f);
	printf("4. Double: %lf\n", d);
	printf("5. Long: %ld\n", l);
	printf("6. Long Long: %llu\n", ll);
	printf("7. String: %s\n", str);

	// 结构体和函数
	arr* my_arr = create_arr();
	insert_arr(my_arr, 1);
	insert_arr(my_arr, 2);
	insert_arr(my_arr, 3);
	printf("7. sum_arr(): %d\n", sum_arr(my_arr));
	delete_arr(my_arr);

	// 宏定义
	printf("8. MAX: %d\n", MAX);

	// 全局变量
	printf("9. globalStaticVar: %d\n", globalStaticVar);
	
	return 0;
}