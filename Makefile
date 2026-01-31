CC = gcc
CFLAGS = -Wall -Wextra -g
TARGET = myprogram
SOURCES = main.c
OBJECTS = $(SOURCES:.c=.o)
LED_SAMPLE = sensors/led_digital_tube/blink.c

all: $(TARGET)

led: sensors/led_digital_tube/blink.c
	$(CC) $(LED_SAMPLE)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(TARGET)

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(TARGET) $(OBJECTS)
