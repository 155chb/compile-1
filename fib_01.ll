@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define i32 @main() #0 {
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	
	store i32 0, i32* %1, align 4
	store i32 0, i32* %2, align 4
	store i32 0, i32* %3, align 4

	%4 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %2)
	store i32 %4, i32* %2, align 4
	%5 = load i32, i32* %2, align 4
	%6 = call i32 (i32) @fib(i32 %5)
	store i32 %6, i32* %3, align 4
	%7 = load i32, i32* %3, align 4
	%8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %7)
	ret i32 0
}

declare i32 @__isoc99_scanf(i8* , ...)
declare i32 @printf(i8* , ...)

define i32 @fib(i32 %0) {
	%2 = alloca i32, align 4
	store i32 0, i32* %2, align 4
	%3 = icmp sle i32 %0, 2
	br i1 %3, label %4, label %5
4:				;preds = %1
	store i32 1, i32* %2, align 4
	br label %11
5:				;preds = %1
	%6 = sub nsw i32 %0, 1
	%7 = call i32 @fib(i32 %6)
	%8 = sub nsw i32 %0, 2
	%9 = call i32 @fib(i32 %8)
	%10 = add nsw i32 %7, %9
	store i32 %10, i32* %2, align 4
	br label %11
11:				;preds = %4, %5
	%12 = load i32, i32* %2, align 4
	ret i32 %12
}