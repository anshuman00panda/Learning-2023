#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Structure definition
struct Student {
    int rollno;
    char name[20];
    float marks;
};

// Function to parse the string and initialize the array of structures
void initializeStudentArray(struct Student *students, int size, const char *input) {
    char temp[20];
    int count = 0;
    int index = 0;
    int len = strlen(input);

    for (int i = 0; i < len; i++) {
        if (input[i] != ' ') {
            temp[index++] = input[i];
        } else {
            temp[index] = '\0';
            index = 0;

            switch (count % 3) {
                case 0:
                    students[count / 3].rollno = atoi(temp);
                    break;
                case 1:
                    strcpy(students[count / 3].name, temp);
                    break;
                case 2:
                    students[count / 3].marks = atof(temp);
                    break;
            }

            count++;
        }
    }
}

int main() {
    int size;
    char input[100];

    printf("Enter the number of students: ");
    scanf("%d", &size);

    // Dynamically allocate memory for the array of structures
    struct Student *students = (struct Student *)malloc(size * sizeof(struct Student));

    // Read the input string
    printf("Enter the input string: ");
    scanf(" %[^\n]", input);

    // Initialize the array of structures by parsing the input string
    initializeStudentArray(students, size, input);

    // Display the initialized array of structures
    printf("\nInitialized Student Array:\n");
    for (int i = 0; i < size; i++) {
        printf("Student %d\n", i + 1);
        printf("Roll No: %d\n", students[i].rollno);
        printf("Name: %s\n", students[i].name);
        printf("Marks: %.2f\n", students[i].marks);
        printf("\n");
    }

    // Free the dynamically allocated memory
    free(students);

    return 0;
}
