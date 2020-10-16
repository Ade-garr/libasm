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
#include <string.h>
#include "libasm.h"

int main()
{
    char str[] = "Test";
    char src[] = "C'est correct";
    char dest[] = "suce des bites";
    char dest2[] = "suce des bites";
    char src2[] = "C'est correct";
    char dest3[] = "suce des bites";
    char src3[] = "C'est correct";
    

    //ft_strlen:
    printf("strlen = %lu\n", strlen(str));
    printf("ft_strlen = %zu\n", ft_strlen(str));

    //ft_strcpy:
    printf("strcpy = %s\n", strcpy(dest, src));
    printf("ft_strcpy = %s\n", ft_strcpy(dest2, src2));

    //ft_strcmp:
    printf("strcmp = %d\n", strcmp(dest3, src3));
    printf("ft_strcmp = %d\n", ft_strcmp(dest3, src3));

    return(0);
}