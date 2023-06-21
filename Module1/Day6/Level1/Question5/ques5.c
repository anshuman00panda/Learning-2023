#include <stdio.h>
#include <string.h>

struct Student {
    int rollno;
    char name[20];
    float marks;
};

int searchStudentByName(struct Student *students, int size, const char *name) {
    
    for (int i = 0; i < size; i++) 
    {
        if (strcmp(students[i].name, name) == 0) 
        {
            return i;
        }
    }
    return -1;
}

int main() {
    struct Student students[5] = {
        {1001, "Aron", 90.50},
        {1002, "Bob", 85.25},
        {1003, "Claire", 95.75},
        {1004, "David", 80.00},
        {1005, "Emily", 92.50}
    };

    char searchName[20];
    printf("Enter the name to search: ");
    scanf("%s", searchName);

    int index = searchStudentByName(students, 5, searchName);

    if (index != -1) 
    {
        printf("Student Found at index %d\n", index);
        printf("Roll No: %d\n", students[index].rollno);
        printf("Name: %s\n", students[index].name);
        printf("Marks: %.2f\n", students[index].marks);
    } 
    else 
    {
        printf("Student Not Found\n");
    }

    return 0;
}
