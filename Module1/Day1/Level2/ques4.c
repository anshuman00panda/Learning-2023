#include <stdio.h>
#include <ctype.h>

int find_character_type(char ch) {
    
    if (isupper(ch)) {
        return 1;
    } 
    else if (islower(ch)) {
        return 2;
    } 
    else if (isdigit(ch)) {
        return 3;
    } 
    else if (ispunct(ch)) {
        return 4;
    } 
    else if (isprint(ch)) {
        return 5;
    } 
    else {
        return -1;
    }
}

int main() {
    char character = '!';
    int result = find_character_type(character);

    switch (result) {
        case 1:
            printf("Type: Uppercase Alphabet\n");
            break;
        case 2:
            printf("Type: Lowercase Alphabet\n");
            break;
        case 3:
            printf("Type: Digit\n");
            break;
        case 4:
            printf("Type: Printable Symbol\n");
            break;
        case 5:
            printf("Type: Non-Printable Symbol\n");
            break;
        default:
            printf("Type: Unknown\n");
    }

    return 0;
}
