#include <stdio.h>

#define SIZE 10

int main() {
    
    int arr[SIZE] = {64, 84, 20, 36, 12, 90, 72, 10, 45, 56};
    int minimum = arr[0];
    int maximum = arr[0];
    int i;

    for (i = 1; i < SIZE; i++) 
    {
        if (arr[i] < minimum)
            minimum = arr[i];
        
        if (arr[i] > maximum)
            maximum = arr[i];
    }

    printf("Minimum: %d\n", minimum);
    printf("Maximum: %d\n", maximum);

    return 0;
}
