#include <stdio.h>
#include <stdlib.h>

int stringToInteger(const char *str) {
    return atoi(str);
}

int main() {
    const char *str = "52780";

    int number = stringToInteger(str);

    printf("String: %s\n", str);
    printf("Integer: %d\n", number);

    return 0;
}
