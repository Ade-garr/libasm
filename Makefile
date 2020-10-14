# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ade-garr <ade-garr@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/15 15:12:32 by ade-garr          #+#    #+#              #
#    Updated: 2020/10/12 16:41:25 by ade-garr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS += ft_strlen.s

OBJS	= ${SRCS:.s=.o}

NAME	= libasm.a

ASMC		= nasm

all:		${NAME}

${NAME}:	${OBJS}
			ar rcs $@ $^
			printf "\033[32m$@ is ready ! \n\033[0m"

${OBJS}: %.o: %.s
			${ASMC} -f macho64 -s $< -o $@
			
clean:
			${RM} ${OBJS}

fclean:		clean
			${RM} ${NAME}

re:			fclean all

.PHONY:		all clean fclean re
.SILENT:
