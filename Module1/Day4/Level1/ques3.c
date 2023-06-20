#include <stdio.h>

#define SIZE 10

void reverseArray(int arr[], int size) {
    
    int i, temp;

    for (i = 0; i < size / 2; i++) 
    {
        temp = arr[i];
        arr[i] = arr[size - 1 - i];
        arr[size - 1 - i] = temp;
    }
}

int main() {
    
    int arr[SIZE] = {64, 84, 20, 36, 12, 90, 72, 10, 45, 56};
    int i;

    printf("Original array: ");
    for (i = 0; i < SIZE; i++) 
    {
        printf("%d ", arr[i]);
    }
    printf("\n");

    reverseArray(arr, SIZE);

    printf("Reversed array: ");
    for (i = 0; i < SIZE; i++) 
    {
        printf("%d ", arr[i]);
    }
    printf("\n");

    return 0;
}
