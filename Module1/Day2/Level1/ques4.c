#include <stdio.h>

// Function to count the number of set bits in a given value
int countSetBits(int value) {
    int count = 0;
    while (value > 0) {
        count += value & 1;
        value >>= 1;
    }
    return count;
}

int main() {
    int arr[] = {0x1, 0xF4, 0x10001};
    int size = sizeof(arr) / sizeof(arr[0]);
    
    int totalSetBits = 0;
    for (int i = 0; i < size; i++) {
        totalSetBits += countSetBits(arr[i]);
    }
    
    printf("Total number of set bits: %d\n", totalSetBits);
    
    return 0;
}
