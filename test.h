#include <stdio.h>
#include <stdlib.h>

#define MAX 10
typedef struct {
   int length;
   int *value;
} arr;

arr* create_arr() {
   arr* a = (arr*)malloc(sizeof(arr));
   a->length = 0;
   a->value = (int*)malloc(sizeof(int) * MAX);
   return a;
}

void delete_arr(arr* a) {
   free(a->value);
   free(a);
}

void insert_arr(arr* a, int val) {
   a->value[a->length] = val;
   a->length++;
}

void display_arr(arr* a) {
   for (int i = 0; i < a->length; i++) {
       printf("%d ", a->value[i]);
   }
   printf("\n");
}

int sum_arr(arr* a) {
   int sum = 0;
   for (int i = 0; i < a->length; i++) {
       sum += a->value[i];
   }
   return sum;
}