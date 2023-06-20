#include <stdio.h>

void findSmallestLargestDigits(int n) {
    
    int i, num, smallest = 9, largest = 0;

    for (i = 1; i <= n; i++) {
        printf("Enter number %d: ", i);
        scanf("%d", &num);

        while (num > 0) {
            
            int digit = num % 10;
            
            if (digit < smallest)
                smallest = digit;
            if (digit > largest)
                largest = digit;
            num /= 10;
        }
    }

    if (smallest == 9 || largest == 0)
        printf("Not Valid\n");
    else
        printf("Smallest digit: %d\nLargest digit: %d\n", smallest, largest);
}

int main() {
    int n;

    printf("Enter the value of n: ");
    scanf("%d", &n);

    findSmallestLargestDigits(n);

    return 0;
}
