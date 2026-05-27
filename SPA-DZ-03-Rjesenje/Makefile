CXX ?= g++
CXXFLAGS ?= -std=c++17 -Wall -Wextra -pedantic -O2
SFML_CFLAGS := $(shell pkg-config --cflags sfml-graphics 2>/dev/null)
SFML_LIBS := $(shell pkg-config --libs sfml-graphics 2>/dev/null)

BIN_DIR := bin
APP := $(BIN_DIR)/spa-dz3

.PHONY: all run check clean

all: $(APP)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

$(APP): src/main.cpp src/GridPath.hpp | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $(SFML_CFLAGS) $< -o $@ $(SFML_LIBS)

run: $(APP)
	./$(APP)

check: $(APP)
	./$(APP) --check

clean:
	rm -rf $(BIN_DIR) build
