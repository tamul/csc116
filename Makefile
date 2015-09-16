CXX=clang++
CXXFLAGS=-Wall -pedantic 
LDFLAGS=
SOURCES=turtle.cpp svg_file.cpp
EXECUTABLE=


all: 1 2 3 bonus

1:
	$(CXX) $(LDFLAGS) $(CXXFLAGS) $(SOURCES) part1_tester.cpp -g -o part1

2:
	$(CXX) $(LDFLAGS) $(CXXFLAGS) $(SOURCES) part2.cpp -g -o part2

3:
	$(CXX) $(LDFLAGS) $(CXXFLAGS) $(SOURCES) part3.cpp -g -o part3

.PHONY: bonus
bonus:
	$(CXX) $(LDFLAGS) $(CXXFLAGS) $(SOURCES) bonus.cpp -g -o bonus

.PHONY: clean
clean:
	-rm -fr *.dSYM
	-rm -f part1 part2 part3 bonus
