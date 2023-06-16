#include <stdio.h>

// Function to swap any type of data
void swap(void* a, void* b, size_t size) {
    char* ptr_a = (char*)a;
    char* ptr_b = (char*)b;
    
    for (size_t i = 0; i < size; i++) {
        char temp = ptr_a[i];
        ptr_a[i] = ptr_b[i];
        ptr_b[i] = temp;
    }
}

int main() {
    int num1 = 10;
    int num2 = 20;
    printf("Before swap: num1 = %d, num2 = %d\n", num1, num2);
    swap(&num1, &num2, sizeof(int));
    printf("After swap: num1 = %d, num2 = %d\n", num1, num2);
    
    float f1 = 3.14;
    float f2 = 2.718;
    printf("Before swap: f1 = %f, f2 = %f\n", f1, f2);
    swap(&f1, &f2, sizeof(float));
    printf("After swap: f1 = %f, f2 = %f\n", f1, f2);
    
    char c1 = 'A';
    char c2 = 'B';
    printf("Before swap: c1 = %c, c2 = %c\n", c1, c2);
    swap(&c1, &c2, sizeof(char));
    printf("After swap: c1 = %c, c2 = %c\n", c1, c2);
    
    return 0;
}
