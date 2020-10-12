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

int main()
{
    char str[] = "Test";

    printf("strlen = %d\n", strlen(str));
    printf("ft_strlen = %d\n", ft_strlen(str));
    return(0);
}