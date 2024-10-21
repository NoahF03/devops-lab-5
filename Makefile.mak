# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -g

# Executable name
TARGET = hello

# Default rule
all: $(TARGET)

# Rule to build the executable
$(TARGET): main.o
	$(CC) $(CFLAGS) -o $(TARGET) main.o

# Rule to build the object file
main.o: main.c
	$(CC) $(CFLAGS) -c main.c

# Clean rule to remove build artifacts
clean:
	rm -f *.o $(TARGET)
