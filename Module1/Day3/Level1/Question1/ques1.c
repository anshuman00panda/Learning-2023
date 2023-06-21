#include <stdio.h>

// Function to print numbers from 1 to n
void printNumbers(int n) {
    for (int i = 1; i <= n; i++) {
        printf("%d", i);
    }
}

// Function to print spaces in between numbers
void printSpaces(int n) {
    for (int i = 1; i <= n; i++) {
        printf(" ");
    }
}

// Function to print numbers from n to 1
void printReverseNumbers(int n) {
    for (int i = n; i >= 1; i--) {
        printf("%d", i);
    }
}

// Function to print the pattern
void printPattern(int n) {
    for (int i = n; i >= 1; i--) {
        printNumbers(i);
        printSpaces(2 * (n - i));
        printReverseNumbers(i);
        printf("\n");
    }
}

int main() {
    int n;
    printf("Enter the number of rows: ");
    scanf("%d", &n);
    printPattern(n);
    return 0;
}
