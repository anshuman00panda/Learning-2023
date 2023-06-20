#include <stdio.h>

#define SIZE 10

int main() {
    
    int arr[SIZE] = {64, 84, 20, 36, 12, 90, 72, 10, 45, 56};
    int evenSum = 0;
    int oddSum = 0;
    int i;

    // Calculate sum of even and odd elements
    for (i = 0; i < SIZE; i++) 
    {
        if (arr[i] % 2 == 0)
            evenSum += arr[i];
        
        else
            oddSum += arr[i];
    }

    // Find difference
    int difference = evenSum - oddSum;

    // Print difference
    printf("Difference between even and odd elements: %d\n", difference);

    return 0;
}
