#include <stdio.h>
#include <stdlib.h>
#include <string.h>

unsigned long computeTotalSeconds(const char *timeStr) {
    
    char *token;
    unsigned long hours, minutes, seconds;

    char strCopy[9];
    strncpy(strCopy, timeStr, sizeof(strCopy));
    strCopy[8] = '\0';

    token = strtok(strCopy, ":");
    hours = strtoul(token, NULL, 10);

    token = strtok(NULL, ":");
    minutes = strtoul(token, NULL, 10);

    token = strtok(NULL, ":");
    seconds = strtoul(token, NULL, 10);

    unsigned long totalSeconds = hours * 3600 + minutes * 60 + seconds;
    return totalSeconds;
}

int main() {
    
    const char *timeStr = "12:34:56";

    unsigned long totalSeconds = computeTotalSeconds(timeStr);

    printf("Time: %s\n", timeStr);
    printf("Total Seconds: %lu\n", totalSeconds);

    return 0;
}
