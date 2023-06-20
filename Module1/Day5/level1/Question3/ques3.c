#include <stdio.h>

// Structure definition for a time period
struct Time {
    int hours;
    int minutes;
    int seconds;
};

// Function to calculate the difference between two time periods
struct Time calculateTimeDifference(struct Time startTime, struct Time endTime) {
    struct Time difference;
    int startTotalSeconds = startTime.hours * 3600 + startTime.minutes * 60 + startTime.seconds;
    int endTotalSeconds = endTime.hours * 3600 + endTime.minutes * 60 + endTime.seconds;
    int totalSeconds = endTotalSeconds - startTotalSeconds;

    difference.hours = totalSeconds / 3600;
    totalSeconds %= 3600;
    difference.minutes = totalSeconds / 60;
    difference.seconds = totalSeconds % 60;

    return difference;
}

int main() {
    // Declare two time periods
    struct Time startTime, endTime;

    // Read the start time
    printf("Enter the start time (hh:mm:ss): ");
    scanf("%d:%d:%d", &startTime.hours, &startTime.minutes, &startTime.seconds);

    // Read the end time
    printf("Enter the end time (hh:mm:ss): ");
    scanf("%d:%d:%d", &endTime.hours, &endTime.minutes, &endTime.seconds);

    // Calculate the time difference
    struct Time difference = calculateTimeDifference(startTime, endTime);

    // Print the time difference
    printf("Time Difference: %02d:%02d:%02d\n", difference.hours, difference.minutes, difference.seconds);

    return 0;
}
