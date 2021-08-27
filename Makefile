# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: antheven <antheven@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/08/26 21:39:47 by antheven          #+#    #+#              #
#    Updated: 2021/08/26 21:39:47 by antheven         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC_DIR	= src
OUT_DIR	= src
SRC		= \
		ascii/ft_isalpha.c \
		ascii/ft_isdigit.c \
		ascii/ft_isalnum.c \
		ascii/ft_isascii.c \
		ascii/ft_isprint.c \
		ascii/ft_strlen.c \
		memory/ft_memset.c \
		memory/ft_bzero.c \
		memory/ft_memcpy.c \
		memory/ft_memmove.c \
		ascii/ft_strlcpy.c \
		ascii/ft_strlcat.c \
		ascii/ft_toupper.c \
		ascii/ft_tolower.c \
		ascii/ft_strchr.c \
		ascii/ft_strrchr.c \
		ascii/ft_strncmp.c \
		memory/ft_memchr.c \
		memory/ft_memcmp.c \
		ascii/ft_strnstr.c \
		numeral/ft_atoi.c \
		\
		memory/ft_calloc.c \
		ascii/ft_strdup.c \
		\
		ascii/ft_substr.c \
		ascii/ft_strjoin.c \
		ascii/ft_strtrim.c \
		ascii/ft_split.c \
		numeral/ft_itoa.c \
		ascii/ft_strmapi.c \
		ascii/ft_striteri.c \
		output/ft_putchar_fd.c \
		output/ft_putstr_fd.c \
		output/ft_putendl_fd.c \
		output/ft_putnbr_fd.c \
		output/ft_putchar.c \
		output/ft_putstr.c \
		output/ft_putendl.c \
		output/ft_putnbr.c \

OUT		= $(SRC:.c=.o)
BIN		=
LIB		= libft.a
IS_LIB	= 1
IS_BIN	= 0
SRCS	= $(addprefix $(SRC_DIR)/, $(SRC))
OUTS	= $(addprefix $(OUT_DIR)/, $(OUT))
INC_DIR	= include
LIBS	=
FLAGS	= -Wall -Wextra -Werror

all: $(BIN)

$(BIN): $(OUTS)
        @printf "Packing out files.."
        @gcc -o $(BIN) $(OUTS) $(LIBS) $(FLAGS)
        @echo "OK"

.c.o:
#       @echo "$(SRC_DIR)/$*.c => $(OUT_DIR)/$*.o"
        @echo "$< => $@"
        @$(CC) -I $(INC_DIR) -c -o $@ $< $(CFLAGS)
#       @mkdir -p $(OUT_DIR)/$*.o
#       @rm  -rf $(OUT_DIR)/$*.o
#       @$(CC) -I $(INC_DIR) -c -o $(OUT_DIR)/$*.o $(SRC_DIR)/$*.c $(CFLAGS)
#       printf " - OK%c" 10

clean:
        $(RM) $(OUTS)

fclean: clean
        $(RM) $(BIN)