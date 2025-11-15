CXX = g++-15
CXXFLAGS = -Wall -O2 -std=c++11 -fopenmp
LDFLAGS = -fopenmp

TARGET = merge_sort
SRC = src/merge_sort.cpp
HEADERS = tooling/omp_tasking.hpp

.PHONY: all clean run

all: $(TARGET)

$(TARGET): $(SRC) $(HEADERS)
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET) $(LDFLAGS)

clean:
	rm -f $(TARGET)

run: $(TARGET)
	./$(TARGET) 1000000000