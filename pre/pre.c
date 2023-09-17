#include <stdio.h>

// 宏定义
#define PI 3.1415926
#define DEBUG

// 函数声明
double circle_area(double r);

int main() {
    double radius = 5.0;

    // 进行宏替换
    double circumference = 2 * PI * radius;
    printf("The circumference of the circle is: %f\n", circumference);

#ifdef DEBUG
    printf("Debug mode is enabled.\n");
#else
    printf("Debug mode is disabled.\n");
#endif

    // 调用函数
    double area = circle_area(radius);
    printf("The area of the circle is: %f\n", area);

    return 0;
}

// 函数定义
double circle_area(double r) {
    // 使用替换后的符号
    double area = PI * r * r;

    // 注释掉调试语句
    // printf("The radius of the circle is: %f\n", r);
    return area;
}
