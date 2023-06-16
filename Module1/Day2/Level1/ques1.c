#include <stdio.h>
#include <stdint.h>

int main() {
    double x = 0.7;
    
    // Extracting the exponent part
    uint64_t* ptr = (uint64_t*)&x;
    uint64_t bits = *ptr;
    uint64_t exponent = (bits >> 52) & 0x7FF;
    
    // Printing in hexadecimal format
    printf("Exponent (hex): 0x%lX\n", exponent);
    
    // Printing in binary format
    printf("Exponent (binary): 0b");
    for (int i = 10; i >= 0; i--) {
        printf("%d", (exponent >> i) & 1);
    }
    printf("\n");
    
    return 0;
}
