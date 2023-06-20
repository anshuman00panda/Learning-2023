#include <stdio.h>

// Structure definition for the box
struct Box {
    double length;
    double width;
    double height;
};

// Function to calculate the volume of the box using the arrow operator
double calculateVolumeArrow(const struct Box *box) {
    return box->length * box->width * box->height;
}

// Function to calculate the total surface area of the box using the dot operator
double calculateSurfaceAreaDot(struct Box box) {
    double side1 = box.length * box.width;
    double side2 = box.length * box.height;
    double side3 = box.width * box.height;
    return 2 * (side1 + side2 + side3);
}

int main() {
    // Create a box object
    struct Box myBox = { 5.0, 3.0, 4.0 };

    // Create a pointer to the box object
    struct Box *boxPtr = &myBox;

    // Calculate the volume using the arrow operator
    double volumeArrow = calculateVolumeArrow(boxPtr);

    // Calculate the surface area using the dot operator
    double surfaceAreaDot = calculateSurfaceAreaDot(*boxPtr);

    // Print the results
    printf("Box Dimensions:\n");
    printf("Length (Arrow): %.2f\n", boxPtr->length);
    printf("Width (Arrow): %.2f\n", boxPtr->width);
    printf("Height (Arrow): %.2f\n", boxPtr->height);
    printf("\n");
    printf("Length (Dot): %.2f\n", (*boxPtr).length);
    printf("Width (Dot): %.2f\n", (*boxPtr).width);
    printf("Height (Dot): %.2f\n", (*boxPtr).height);
    printf("\n");
    printf("Volume (Arrow): %.2f\n", volumeArrow);
    printf("Surface Area (Dot): %.2f\n", surfaceAreaDot);

    return 0;
}
