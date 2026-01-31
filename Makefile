CC = gcc
CFLAGS = -Wall
TARGET = myprogram
SOURCES = main.c
OBJECTS = $(SOURCES:.c=.o)
LED_SAMPLE = sensors/led_digital_tube/blink.c
BUZZER_FILE= sensors/buzzer/buzzer.c

all: $(TARGET)

led: sensors/led_digital_tube/blink.c
	$(CC) $(CFLAGS) -o $(TARGET) $(LED_SAMPLE)  -lpigpio -lrt

run-led: led
	sudo ./$(TARGET)

run-buzzer: $(BUZZER_FILE)
	$(CC) -o $(TARGET) $(BUZZER_FILE)
	./$(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(TARGET)

clean:
	rm -f $(TARGET) $(OBJECTS)
