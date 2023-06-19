#include <stdio.h>
#include <string.h>

void sortNames(char *names[], int size) {
    char *temp;
    
    for (int i = 0; i < size - 1; i++) {
        for (int j = i + 1; j < size; j++) {
            if (strcmp(names[i], names[j]) > 0) {
                // Swap the names if they are not in alphabetical order
                temp = names[i];
                names[i] = names[j];
                names[j] = temp;
            }
        }
    }
}

void printNames(char *names[], int size) {
    printf("Sorted names:\n");
    for (int i = 0; i < size; i++) {
        printf("%s\n", names[i]);
    }
}

int main() {
    char *names[] = {
        "Santosh", "Amol", "Santosh Jain", "Kishore", "Rahul", "Amolkumar", "Hemant"
    };
    int size = sizeof(names) / sizeof(names[0]);
    
    sortNames(names, size);
    printNames(names, size);
    
    return 0;
}
