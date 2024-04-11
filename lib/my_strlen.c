/*
** EPITECH PROJECT, 2024
** MINISHELL2
** File description:
** count the number on char
*/
#include "../my.h"

int my_strlen(char const *str)
{
    int step = 0;

    while (str[step] && str[step])
        step++;
    return (step);
}
