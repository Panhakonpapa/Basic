# Compiler and flags
CC=x86_64-w64-mingw32-gcc 
CFLAGS = -ISDL2-2.30.7/x86_64-w64-mingw32/include/ -LSDL2-2.30.7/x86_64-w64-mingw32/lib -lSDL2main -lSDL2 -lmingw32 -mwindows 
# Source files and output
SRCS = game.c
OBJS = $(SRCS:.c=.o)
TARGET = game.exe

# Default target
all: $(TARGET)

# Link the object files to create the executable
$(TARGET): $(OBJS)
	$(CC) -o $(TARGET) $(OBJS) $(CFLAGS)

# Compile each .c file to .o
%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)

# Clean up the build
clean:
	rm -f $(OBJS) $(TARGET)

