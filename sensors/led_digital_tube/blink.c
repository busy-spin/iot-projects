#include <stdio.h>
#include <pigpio.h>

#define PWM_SPEED 1

int main() {

    if (gpioInitialise() < 0)
    {
        printf("GPIO initialization failed");
    }
    else
    {
        printf("GPIO initialization successful");
    }

    gpioTerminate();

    return 0;

}