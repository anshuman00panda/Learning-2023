#include <stdio.h>
#include <string.h>

void rotateString(char *str, int positions) {
    int length = strlen(str);

    // Normalize positions to be within the length of the string
    positions %= length;
    if (positions < 0)
        positions += length;

    // Rotate the string by shifting characters
    char temp;
    for (int i = 0; i < positions; i++) {
        temp = str[0];
        for (int j = 0; j < length - 1; j++) {
            str[j] = str[j + 1];
        }
        str[length - 1] = temp;
    }
}

int main() {
    char str[] = "Hello, World!";
    int positions = 3;

    printf("Original string: %s\n", str);

    rotateString(str, positions);

    printf("Rotated string: %s\n", str);

    return 0;
}
