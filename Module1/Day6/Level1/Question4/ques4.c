#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Structure definition
struct Student {
    int rollno;
    char name[20];
    float marks;
};

// Function to initialize all members in the array of structures
void initializeStudentArray(struct Student *students, int size) {
    for (int i = 0; i < size; i++) 
    {
        students[i].rollno = 0;
        strcpy(students[i].name, "");
        students[i].marks = 0.0;
    }
}

// Function to display all members in the array of structures
void displayStudentArray(struct Student *students, int size) {
    
    printf("\nStudent Array:\n");
    
    for (int i = 0; i < size; i++) 
    {
        printf("Student %d\n", i + 1);
        printf("Roll No: %d\n", students[i].rollno);
        printf("Name: %s\n", students[i].name);
        printf("Marks: %.2f\n", students[i].marks);
        printf("\n");
    }
}

// Function to sort the array of structures in descending order based on marks
void sortStudentArray(struct Student *students, int size) {
    struct Student temp;

    for (int i = 0; i < size - 1; i++) 
    {
        for (int j = 0; j < size - i - 1; j++) 
        {
            if (students[j].marks < students[j + 1].marks) 
            {
                // Swap the structures
                temp = students[j];
                students[j] = students[j + 1];
                students[j + 1] = temp;
            }
        }
    }
}

// Function to parse the input string and initialize the array of structures
void parseInputString(struct Student *students, int size, char *input) {
    char *token;
    int count = 0;

    // Tokenize the input string
    token = strtok(input, " ");

    while (token != NULL) {
        // Parse roll number
        students[count].rollno = atoi(token);
        token = strtok(NULL, " ");

        // Parse name
        strcpy(students[count].name, token);
        token = strtok(NULL, " ");

        // Parse marks
        students[count].marks = atof(token);
        token = strtok(NULL, " ");

        count++;
    }
}

int main() {
    int size;
    char input[100];

    printf("Enter the number of students: ");
    scanf("%d", &size);

    // Dynamically allocate memory for the array of structures
    struct Student *students = (struct Student *)malloc(size * sizeof(struct Student));

    // Initialize all members in the array of structures
    initializeStudentArray(students, size);

    // Read the input string
    printf("Enter the input string: ");
    scanf(" %[^\n]", input);

    // Parse the input string and initialize the array of structures
    parseInputString(students, size, input);

    // Display the initialized array of structures
    displayStudentArray(students, size);

    // Sort the array of structures in descending order based on marks
    sortStudentArray(students, size);

    // Display the sorted array of structures
    printf("\nSorted Student Array (Descending Order of Marks):\n");
    displayStudentArray(students, size);

    // Free the dynamically allocated memory
    free(students);

    return 0;
}
