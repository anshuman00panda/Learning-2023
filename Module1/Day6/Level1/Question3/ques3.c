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

    // Display the initialized array of structures
    displayStudentArray(students, size);

    // Free the dynamically allocated memory
    free(students);

    return 0;
}
