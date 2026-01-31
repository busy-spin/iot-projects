#include <stdio.h>
#include <wiringPi.h> // Include WiringPi library!
//
// Created by pi on 31/01/2026.
//
int main() {
    printf("Hello buzzer !!!\n");
    wiringPiSetupGpio();
    return 0;
}