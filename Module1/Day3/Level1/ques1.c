#include <stdio.h>

void print_pattern1(int n) {
    
    int i;
    
    for (i = 1; i <= n; i++) 
    {
        printf("%d", i);
    }
    
    for (i = n; i >= 1; i--) 
    {
        printf("%d", i);
    }
    printf("\n");
}

void print_pattern2(int n) {
    
    int i;
    
    for (i = 1; i <= n; i++) 
    {
        printf("%d", i);
    }
    
    for (i = 1; i <= (n * 2) - 2; i++) 
    {
        printf(" ");
    }
    
    for (i = n; i >= 1; i--) 
    {
        printf("%d", i);
    }
    printf("\n");
}

void print_pattern3(int n) {
    
    int i;
    
    for (i = 1; i <= n; i++) 
    {
        printf("%d", i);
    }
    printf(" ");
    
    for (i = 1; i < n; i++) 
    {
        printf(" ");
    }
    
    for (i = n; i >= 1; i--) 
    {
        printf("%d", i);
    }
    printf("\n");
}

void print_pattern(int n) {
    
    int i;
    
    for (i = n; i >= 1; i--) 
    {
        print_pattern1(i);
        if (i > 1) 
        {
            print_pattern2(i);
            print_pattern3(i);
        }
    }
}

int main() {
    
    int n = 5;
    print_pattern(n);
    return 0;
}
