/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ade-garr <ade-garr@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/10/12 15:13:04 by ade-garr          #+#    #+#             */
/*   Updated: 2020/10/12 16:41:28 by ade-garr         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include "libasm.h"

int main()
{
    char    str[] = "Test";
    char    src[] = "C'est correct";
    char    dest[] = "suce des bites";
    char    dest2[] = "suce des bites";
    char    src2[] = "C'est correct";
    char    dest3[] = "suce des bites";
    char    src3[] = "C'est correct";
    int     fd;
    char    buf[13];
    char    bufbis[13];
    char    strtodup[] = "chaine a dupliquer";

    //ft_strlen:
    printf("ft_strlen:\n");
    printf("strlen = %lu\n", strlen(str));
    printf("ft_strlen = %zu\n\n", ft_strlen(str));

    //ft_strcpy:
    printf("ft_strcpy:\n");
    printf("strcpy = %s\n", strcpy(dest, src));
    printf("ft_strcpy = %s\n\n", ft_strcpy(dest2, src2));

    //ft_strcmp:
    printf("ft_strcmp:\n");
    printf("strcmp = %d\n", strcmp(dest3, src3));
    printf("ft_strcmp = %d\n\n", ft_strcmp(dest3, src3));

    //ft_write:
    printf("ft_write:\n");
    printf("write = %zd & errno = %d\n", write(1, "C'est correct\n", 14), errno);
    printf("write = %zd & errno = %d\n\n", ft_write(1, "C'est correct\n", 14), errno);

    //ft_read:
    printf("ft_read:\n");
    fd = open("test.txt", O_RDONLY);
    printf("read = %zd & errno = %d\n", read(fd, buf, 12), errno);
    buf[12] = '\0';
    printf("buf = %s\n", buf);
    close(fd);
    fd = open("test.txt", O_RDONLY);
    printf("ft_read = %zd & errno = %d\n", ft_read(fd, bufbis, 12), errno);
    bufbis[12] = '\0';
    printf("bufbis = %s\n\n", bufbis);
    close(fd);

    //ft_strdup:
    printf("ft_strdup:\n");
    printf("strdup = %s\n", strdup(strtodup));
    printf("ft_strdup = %s\n", ft_strdup(strtodup));
    return(0);
}