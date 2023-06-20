#include <stdio.h>

// Structure definition for the box
struct Box {
    double length;
    double width;
    double height;
};

// Function to calculate the volume of the box
double calculateVolume(const struct Box *box) {
    return box->length * box->width * box->height;
}

// Function to calculate the total surface area of the box
double calculateSurfaceArea(const struct Box *box) {
    double side1 = box->length * box->width;
    double side2 = box->length * box->height;
    double side3 = box->width * box->height;
    return 2 * (side1 + side2 + side3);
}

int main() {
    // Create a box object
    struct Box myBox = { 5.0, 3.0, 4.0 };

    // Create a pointer to the box object
    struct Box *boxPtr = &myBox;

    // Calculate the volume and surface area using the structure pointer
    double volume = calculateVolume(boxPtr);
    double surfaceArea = calculateSurfaceArea(boxPtr);

    // Print the results
    printf("Box Dimensions:\n");
    printf("Length: %.2f\n", boxPtr->length);
    printf("Width: %.2f\n", boxPtr->width);
    printf("Height: %.2f\n", boxPtr->height);
    printf("\n");
    printf("Volume: %.2f\n", volume);
    printf("Total Surface Area: %.2f\n", surfaceArea);

    return 0;
}
