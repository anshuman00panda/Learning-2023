#include <stdio.h>

#define SIZE 10

int main() {
    
    int arr[SIZE] = {64, 84, 20, 36, 12, 90, 72, 10, 45, 56};
    int evenIndexSum = 0;
    int oddIndexSum = 0;
    int i;

    for (i = 0; i < SIZE; i++) 
    {
        if (i % 2 == 0)
            evenIndexSum += arr[i];
        
        else
            oddIndexSum += arr[i];
    }

    // Find difference
    int difference = evenIndexSum - oddIndexSum;

    // Print difference
    printf("Difference between even-indexed and odd-indexed elements: %d\n", difference);

    return 0;
}
