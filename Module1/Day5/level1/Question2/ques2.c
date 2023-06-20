#include <stdio.h>

// Structure definition for a complex number
struct Complex {
    double real;
    double imaginary;
};

// Function to read a complex number from the user
void readComplex(struct Complex *complex) {
    printf("Enter the real part: ");
    scanf("%lf", &(complex->real));

    printf("Enter the imaginary part: ");
    scanf("%lf", &(complex->imaginary));
}

// Function to write a complex number to the console
void writeComplex(const struct Complex *complex) {
    if (complex->imaginary >= 0) {
        printf("%.2f + %.2fi\n", complex->real, complex->imaginary);
    } else {
        printf("%.2f - %.2fi\n", complex->real, -complex->imaginary);
    }
}

// Function to add two complex numbers
struct Complex addComplex(const struct Complex *complex1, const struct Complex *complex2) {
    struct Complex sum;
    sum.real = complex1->real + complex2->real;
    sum.imaginary = complex1->imaginary + complex2->imaginary;
    return sum;
}

// Function to multiply two complex numbers
struct Complex multiplyComplex(const struct Complex *complex1, const struct Complex *complex2) {
    struct Complex product;
    product.real = complex1->real * complex2->real - complex1->imaginary * complex2->imaginary;
    product.imaginary = complex1->real * complex2->imaginary + complex1->imaginary * complex2->real;
    return product;
}

int main() {
    // Declare two complex numbers
    struct Complex complex1, complex2;

    // Read the first complex number
    printf("Enter the first complex number:\n");
    readComplex(&complex1);

    // Read the second complex number
    printf("Enter the second complex number:\n");
    readComplex(&complex2);

    // Write the first complex number
    printf("First complex number: ");
    writeComplex(&complex1);

    // Write the second complex number
    printf("Second complex number: ");
    writeComplex(&complex2);

    // Add the two complex numbers
    struct Complex sum = addComplex(&complex1, &complex2);
    printf("Sum: ");
    writeComplex(&sum);

    // Multiply the two complex numbers
    struct Complex product = multiplyComplex(&complex1, &complex2);
    printf("Product: ");
    writeComplex(&product);

    return 0;
}
