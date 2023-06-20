#include <stdio.h>
#include <string.h>

// Structure definition
struct Person {
    char name[50];
    int age;
};

// Function to swap fields of two structures using pointers
void swapStructFields(struct Person *person1, struct Person *person2) {
    // Swap name
    char tempName[50];
    strcpy(tempName, person1->name);
    strcpy(person1->name, person2->name);
    strcpy(person2->name, tempName);

    // Swap age
    int tempAge = person1->age;
    person1->age = person2->age;
    person2->age = tempAge;
}

int main() {
    // Declare two structure variables
    struct Person person1, person2;

    // Read data for person1
    printf("Enter details for person1:\n");
    printf("Enter name: ");
    scanf("%s", person1.name);
    printf("Enter age: ");
    scanf("%d", &(person1.age));

    // Read data for person2
    printf("\nEnter details for person2:\n");
    printf("Enter name: ");
    scanf("%s", person2.name);
    printf("Enter age: ");
    scanf("%d", &(person2.age));

    // Display the original values
    printf("\nOriginal Values:\n");
    printf("Person 1: Name = %s, Age = %d\n", person1.name, person1.age);
    printf("Person 2: Name = %s, Age = %d\n", person2.name, person2.age);

    // Swap the fields of the two structures
    swapStructFields(&person1, &person2);

    // Display the swapped values
    printf("\nSwapped Values:\n");
    printf("Person 1: Name = %s, Age = %d\n", person1.name, person1.age);
    printf("Person 2: Name = %s, Age = %d\n", person2.name, person2.age);

    return 0;
}
