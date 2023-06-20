#include <stdio.h>

#define SIZE 10

int main() {
    
    int arr[SIZE] = {12, 84, 20, 36, 64, 56, 72, 10, 45, 90};
    int sum = 0;
    double average;
    int i;

    for (i = 0; i < SIZE; i++) 
    {
        sum += arr[i];
    }

    average = (double)sum / SIZE;

    printf("Sum: %d\n", sum);
    printf("Average: %.2lf\n", average);

    return 0;
}
