CC=g++

hello: main.o
	$(CC) -o hello main.o

main.o: main.cpp
	$(CC) -c main.cpp

clean:
	rm hello main.o
