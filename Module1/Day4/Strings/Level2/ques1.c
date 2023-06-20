#include <stdio.h>
#include <string.h>
#include <ctype.h>

int isValidEmail(const char *email) {
    
    int length = strlen(email);
    int usernameFlag = 0;
    int domainFlag = 0;
    int extensionFlag = 0;

    // Check username
    for (int i = 0; i < length; i++) 
    {
        if (email[i] == '@') 
        {
            usernameFlag = 1;
            break;
        }
        
        if (!isalnum(email[i]) && email[i] != '.') 
        {
            return 0;
        }
    }

    // Check domain and extension
    for (int i = length - 1; i >= 0; i--) 
    {
        if (email[i] == '.') 
        {
            if (i == length - 1 || i == length - 2) 
            {
                return 0;
            }
            domainFlag = 1;
            extensionFlag = 1;
            break;
        }
        if (!isalpha(email[i]) || isupper(email[i])) 
        {
            return 0;
        }
        
        extensionFlag = 1;
    }

    return (usernameFlag && domainFlag && extensionFlag);
}

int main() {
    const char *email = "example123@example.com";

    int isValid = isValidEmail(email);

    printf("Email: %s\n", email);
    printf("Is Valid: %s\n", isValid ? "Yes" : "No");

    return 0;
}
