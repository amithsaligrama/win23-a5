# Compiler
CC = gcc
CFLAGS = -Wall -Wextra -O2

# Source files
SOURCES = main.c addition.c subtraction.c multiplication.c division.c

# Object files (replace .c with .o)
OBJECTS = $(SOURCES:.c=.o)

# Output executable
TARGET = calculator

# Default rule to build the program
all: $(TARGET)

# Rule to build the executable
$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJECTS)

# Rules to compile .c files into .o files
%.o: %.c operations.h
	$(CC) $(CFLAGS) -c $< -o $@

# Clean rule to remove generated files
clean:
	rm -f $(OBJECTS) $(TARGET)

.PHONY: all clean

