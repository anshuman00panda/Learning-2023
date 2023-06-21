#include <stdio.h>

int findLargestNumber(int num) {
    
    int maxNum = 0;
    int tempNum, divisor = 1;

    while (divisor <= 1000) {
        
        tempNum = (num / (divisor * 10)) * divisor + (num % divisor);
        if (tempNum > maxNum)
            maxNum = tempNum;
        divisor *= 10;
    }

    return maxNum;
}

int main() {
    
    int number;

    printf("Enter a 4-digit number: ");
    scanf("%d", &number);

    int largestNumber = findLargestNumber(number);

    printf("The largest number obtained by deleting a single digit: %d\n", largestNumber);

    return 0;
}
