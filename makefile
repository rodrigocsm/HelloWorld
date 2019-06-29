all: helloWorld

helloWorld: main.o hello.o
	gcc -o helloWorld main.o hello.o

main.o: main.c hello.h
	gcc -o main.o main.c -c -w -Wall -ansi -pedantic

hello.o: hello.c hello.h
	gcc -o hello.o hello.c -c -w -Wall -ansi -pedantic

clean:
	rm -rf *.o *~ helloWorld
