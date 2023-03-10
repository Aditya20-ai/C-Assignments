CC = gcc

SRC_DIR       = src
BUILD_DIR     = builds
LOOPS_SRC_DIR = $(SRC_DIR)/loops
LOOPS_DIR     = $(BUILD_DIR)/loops
STRINGS_SRC_DIR = $(SRC_DIR)/strings_and_arrays
STRINGS_DIR = $(BUILD_DIR)/strings_and_arrays
FUNCTIONS_SRC_DIR = $(SRC_DIR)/functions_and_recursion
FUNCTIONS_DIR = $(BUILD_DIR)/functions_and_recursion
POINTERS_SRC_DIR = $(SRC_DIR)/pointers_and_structures
POINTERS_DIR = $(BUILD_DIR)/pointers_and_structures
FILES_SRC_DIR = $(SRC_DIR)/file_handling
FILES_DIR = $(BUILD_DIR)/file_handling

# Each executable you expect to be generated
LOOP_EXECS = $(LOOPS_DIR)/denominations $(LOOPS_DIR)/fibinocci $(LOOPS_DIR)/largest_and_smallest $(LOOPS_DIR)/pattern_printing $(LOOPS_DIR)/sum_of_digits  $(LOOPS_DIR)/sum_of_n_natural_numbers $(LOOPS_DIR)/triangle_pattern

STRINGS_EXECS = $(STRINGS_DIR)/array_reverse $(STRINGS_DIR)/matrix_operations $(STRINGS_DIR)/mean_median_mode $(STRINGS_DIR)/palindrome $(STRINGS_DIR)/remove_vowels $(STRINGS_DIR)/sorting_and_searching $(STRINGS_DIR)/string_compare $(STRINGS_DIR)/string_reverse $(STRINGS_DIR)/string_to_ascii $(STRINGS_DIR)/substring

FUNCTION_EXECS = $(FUNCTIONS_DIR)/is_prime $(FUNCTIONS_DIR)/factorial $(FUNCTIONS_DIR)/print_till_zero $(FUNCTIONS_DIR)/string_reverse $(FUNCTIONS_DIR)/fibonacci_using_recursion $(FUNCTIONS_DIR)/sum_of_all_elements $(FUNCTIONS_DIR)/sum_of_even_numbers

POINTERS_EXECS = $(POINTERS_DIR)/marksheet $(POINTERS_DIR)/salary_slip $(POINTERS_DIR)/restaurant_bill $(POINTERS_DIR)/string_concatenation $(POINTERS_DIR)/union $(POINTERS_DIR)/transpose_matrix_cube

FILES_EXECS = $(FILES_DIR)/bob_the_librarian $(FILES_DIR)/address_book $(FILES_DIR)/cli_args $(FILES_DIR)/insert_records

CFLAGS = -Wall -Wextra -Wpedantic

.PHONY: all clean

all: $(STRINGS_EXECS) $(LOOP_EXECS) $(FUNCTION_EXECS) $(POINTERS_EXECS) $(FILES_EXECS)

loops: $(LOOP_EXECS)

strings: $(STRINGS_EXECS)

functions: $(FUNCTION_EXECS)

pointers: $(POINTERS_EXECS)

files: $(FILES_EXECS)

$(STRINGS_DIR)/%  : $(STRINGS_SRC_DIR)/%.c
	$(CC)	$(CFLAGS)	$<	-o	$@

$(LOOPS_DIR)/%	: $(LOOPS_SRC_DIR)/%.c
	$(CC)	$(CFLAGS)	$<	-o	$@

$(FUNCTIONS_DIR)/%:	$(FUNCTIONS_SRC_DIR)/%.c
	$(CC)	$(CFLAGS)	$<	-o	$@

$(POINTERS_DIR)/%	:	$(POINTERS_SRC_DIR)/%.c
	$(CC)	$(CFLAGS)	$<	-o	$@

$(FILES_DIR)/%	:	$(FILES_SRC_DIR)/%.c
	$(CC)	$(CFLAGS)	$<	-o	$@

clean:
	rm $(LOOPS_DIR)/*.exe
	rm $(STRINGS_DIR)/*.exe
	rm $(FUNCTIONS_DIR)/*.exe
	rm $(POINTERS_DIR)/*.exe
	rm $(FILES_DIR)/*.exe