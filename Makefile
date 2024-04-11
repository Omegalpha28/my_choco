##
## EPITECH PROJECT, 2023
## Makefile
## File description:
## SIUUUUUUUUUU look at this Makefile it work.
##

LIB :=  lib/my_strlen.c


FILE_O = *.o
LIBMY_A = libmy.a
NAME = mysh
TLIB = -lcriterion --coverage
TEST = test/unit/*.c
TSRC := $(LIB)
W := -Wall -Wextra -Iinclude

$(NAME):
	gcc -c $(LIB) -Iinclude
	gcc -g3 -o $(NAME) main.c $(LIB) $(W) -g3
	make clean

clean:
	find -type f -iname '*.o' -delete
	find -type f -iname $(LIBMY_A) -delete

fclean:
	make clean
	find -type f -iname $(LIBMY_A) -delete
	rm -f $(NAME)

re:
	make fclean
	make

tests_build:
	echo "Hello world"

tests_run: tests_build
	find -type f -iname "*.gcno" -delete
	find -type f -iname "*.gcda" -delete
	find -type f -iname "*.css" -delete
	find -type f -iname "*.html" -delete
	./unit_tests

tests_clean:
	find -type f -iname "*.gcno" -delete
	find -type f -iname "*.gcda" -delete
	find -type f -iname "*.css" -delete
	find -type f -iname "*.html" -delete

tests_fclean: tests_clean
	rm -f unit_tests

tests_re: tests_fclean tests_run
