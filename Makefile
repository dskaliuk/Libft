# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dskaliuk <dskaliuk@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/11 14:44:09 by dskaliuk          #+#    #+#              #
#    Updated: 2023/03/17 15:42:45 by dskaliuk         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC		=	ft_isalpha.c \
			ft_isdigit.c \
			ft_isalnum.c \
			ft_isascii.c \
			ft_isprint.c \
			ft_strlen.c \
			ft_memset.c \
			ft_bzero.c \
			ft_memcpy.c \
			ft_memmove.c \
			ft_strlcpy.c \
			ft_strlcat.c \
			ft_toupper.c \
			ft_tolower.c \
			ft_strchr.c \
			ft_strrchr.c \
			ft_strncmp.c \
			ft_memchr.c \
			ft_memcmp.c \
			ft_strnstr.c \
			ft_atoi.c \
			ft_calloc.c \
			ft_strdup.c \
			ft_substr.c \
			ft_strjoin.c \
			ft_strtrim.c \
			ft_split.c \
			ft_itoa.c \
			ft_strmapi.c \
			ft_striteri.c \
			ft_putchar_fd.c \
			ft_putstr_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c

SRC_BONUS=	ft_lstnew.c \
			ft_lstadd_front.c \
			ft_lstsize.c \
			ft_lstlast.c \
			ft_lstadd_back.c \
			ft_lstdelone.c \
			ft_lstclear.c \
			ft_lstiter.c \
			ft_lstmap.c

OBJ			= $(SRC:.c=.o)
OBJ_BONUS	= $(SRC_BONUS:.c=.o)
NAME		= libft.a
INCL		= libft.h
CC			= cc
CFLAGS		= -Wall -Wextra -Werror
AR 			= ar
ARFLAGS 	= -rcs

all: $(NAME)

$(NAME): $(OBJ)
	@echo "Adding files to the archive $@ ..."
	@$(AR) $(ARFLAGS) $(NAME) $(OBJ)
	@echo "Completed!"

%.o: %.c
	@echo "Generating a target file $@ ..."
	@$(CC) $(CFLAGS) -c -o $@ $<

clean:
	@echo "Deleting object files ..."
	@rm -f $(OBJ) $(OBJ_BONUS)
	@echo "Completed!"

fclean: clean
	@echo "Deleting archive file $(NAME) ..."
	@rm -f $(NAME)
	@echo "Completed!"

re: fclean all

bonus: all $(OBJ_BONUS)
	@echo "Adding bonus files to the archive $(NAME) ..."
	@$(AR) $(ARFLAGS) $(NAME) $(OBJ_BONUS)
	@echo "Compleated!"

$(OBJ_BONUS): $(INCL)

.PHONY: all clean fclean re bonus