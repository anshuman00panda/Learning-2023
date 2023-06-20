#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int countElapsedDays(const char *dateStr) {
    
    struct tm startDate;
    time_t startTime, currentTime;
    double seconds;

    // Get current time
    time(&currentTime);

    // Parse start date from string
    sscanf(dateStr, "%d/%d/%d", &(startDate.tm_mday), &(startDate.tm_mon), &(startDate.tm_year));
    startDate.tm_mon -= 1; // Adjust month to be in range 0-11
    startDate.tm_year -= 1900; // Adjust year to be relative to 1900

    // Set remaining fields of startDate
    startDate.tm_hour = 0;
    startDate.tm_min = 0;
    startDate.tm_sec = 0;

    // Convert start date to time_t
    startTime = mktime(&startDate);

    // Calculate difference in seconds
    seconds = difftime(currentTime, startTime);

    // Convert seconds to days
    int days = seconds / (24 * 60 * 60);

    return days;
}

int main() {
    const char *dateStr = "01/01/2023";

    int elapsedDays = countElapsedDays(dateStr);

    printf("Start Date: %s\n", dateStr);
    printf("Elapsed Days: %d\n", elapsedDays);

    return 0;
}
