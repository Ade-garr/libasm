# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adegarr <adegarr@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/15 15:12:32 by ade-garr          #+#    #+#              #
#    Updated: 2022/01/04 18:12:01 by adegarr          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS += srcs/ft_strlen.s
SRCS += srcs/ft_strcpy.s
SRCS += srcs/ft_strcmp.s
SRCS += srcs/ft_write.s
SRCS += srcs/ft_read.s
SRCS += srcs/ft_strdup.s

OBJS	= ${SRCS:.s=.o}

NAME	= libasm.a

ASMC		= nasm

all:		${NAME}

${NAME}:	${OBJS}
			ar rcs $@ $^
			printf "\033[32m$@ is ready ! \n\033[0m"

${OBJS}: %.o: %.s
			${ASMC} -f elf64 -s $< -o $@
			
clean:
			${RM} ${OBJS}

fclean:		clean
			${RM} ${NAME}

re:			fclean all

.PHONY:		all clean fclean re
.SILENT:
