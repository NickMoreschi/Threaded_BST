CXX=g++
all: set.o settest0

set.o: set.cpp set.h
	$(CXX) -c set.cpp

settest0: set.cpp settest0.cpp
	$(CXX) -g set.cpp settest0.cpp -o test
	./test

clean:
	rm -f set.o