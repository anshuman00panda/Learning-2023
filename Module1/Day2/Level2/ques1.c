#include <stdio.h>

void swapAlternate(int arr[], int size) {
    for (int i = 0; i < size - 1; i += 2) {
        int temp = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = temp;
    }
}

void printArray(int arr[], int size) {
    printf("Result: ");
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int main() {
    int arr1[] = {10, 20, 30, 40, 50};
    int size1 = sizeof(arr1) / sizeof(arr1[0]);
    
    printf("Original array: ");
    printArray(arr1, size1);
    
    swapAlternate(arr1, size1);
    
    printf("Swapped array: ");
    printArray(arr1, size1);
    
    int arr2[] = {10, 20, 30, 40, 50, 60};
    int size2 = sizeof(arr2) / sizeof(arr2[0]);
    
    printf("Original array: ");
    printArray(arr2, size2);
    
    swapAlternate(arr2, size2);
    
    printf("Swapped array: ");
    printArray(arr2, size2);
    
    return 0;
}
