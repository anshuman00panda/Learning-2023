#include <stdio.h>

int find_biggest_ternary(int a, int b) {
    return (a > b) ? a : b;
}

int main() {
    int num1 = 10;
    int num2 = 20;

    int result_ternary = find_biggest_ternary(num1, num2);

    printf("Using ternary operator: %d\n", result_ternary);

    return 0;
}
