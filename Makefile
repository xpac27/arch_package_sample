TARGET = simple-program

$(TARGET): main.c
	clang main.c -o $(TARGET)
