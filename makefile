#	this is simple makefile for the hello, world problem

CC := gcc 
CCFLAGS := -Wall -O3

TARGET := helloworld
SOURCE := $(addsuffix .c, ${TARGET})

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(SOURCE)
	${CC} $^ -o $@ ${CCFLAGS}

clean:
	rm ${TARGET}
