CC = gcc
CFLAGS = -W -Wall
TARGET = bin/h68shell
OBJS = *.o
SRCS = $(OBJS:.o=.c)
SRC_DIR = src

all: $(TARGET)

$(TARGET): $(SRC_DIR)/$(SRCS)
ifeq (exist, $(shell [ ! -d ./bin ] && echo exist))
	mkdir bin
endif
	$(CC) $(CFLAGS) -c $^
	$(CC) $(CFLAGS) -o $@ $(OBJS)
	rm *.o

clean:
	rm bin/*
