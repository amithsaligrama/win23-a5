CC = gcc
CFLAGS = -Wall -Wextra -O2
SOURCES = main.c addition.c subtraction.c multiplication.c division.c
OBJECTS = $(SOURCES:.c=.o)
TARGET = calculator
all: $(TARGET)
$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJECTS)
%.o: %.c operations.h
	$(CC) $(CFLAGS) -c $< -o $@
clean:
	rm -f $(OBJECTS) $(TARGET)

.PHONY: all clean

