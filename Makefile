CC = g++

FLAGS = -Wall -Iinclude -g

TEST_FLAGS = -Wextra -Wall -std=c++11 -Iinclude -g
TEST_BIN = bin/test
TEST_SRC = test/test_main.cpp src/GaloisRNG.cpp

test: $(TEST_BIN)
	@./$(TEST_BIN)

build/test_boilerplate.o: test/test_boilerplate.cpp
	$(CC) $< $(TEST_FLAGS) -c -o$@

$(TEST_BIN): $(TEST_SRC) build/test_boilerplate.o
	$(CC) $? $(TEST_FLAGS) -o $(TEST_BIN)