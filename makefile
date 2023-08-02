# Makefile for the Fortran project

# Compiler
FC = gfortran

# Compiler flags
CFLAGS = -Wall -Wextra -pedantic -O3

# Source directory
SRC_DIR = src
OBJ_DIR = obj
OUT = project

# Object files
OBJ_FILES = $(OBJ_DIR)/main.o $(OBJ_DIR)/add.o

all: $(OUT)

$(OUT): $(OBJ_FILES)
	$(FC) $(CFLAGS) -o $@ $(OBJ_FILES)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.f90
	mkdir -p $(OBJ_DIR)
	$(FC) $(CFLAGS) -c -o $@ $<

clean:
	rm -rf $(OBJ_DIR) $(OUT)
