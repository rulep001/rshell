#rshell makefile

#Variables
COMPILE = g++
FLAGS = -Wall -Werror -ansi -pedantic
OBJS = rshell.o

#Targets

all: rshell	

rshell: 
	@mkdir -p bin
	$(COMPILE) $(FLAGS) src/main.cpp src/argument.cpp src/parse.cpp -o bin/rshell

clean:
	-rm -rf bin/
