CC = gcc
CFLAGS = -Wall -pthread -lpigpio -lrt
TARGET = myprogram
SOURCES = main.c
OBJECTS = $(SOURCES:.c=.o)
LED_SAMPLE = sensors/led_digital_tube/blink.c

all: $(TARGET)

led: sensors/led_digital_tube/blink.c
	$(CC) $(CFLAGS) -o $(TARGET) $(LED_SAMPLE)

run-led: led
	sudo ./$(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(TARGET)

clean:
	rm -f $(TARGET) $(OBJECTS)
