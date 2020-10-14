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

int64_t maxofthree(int64_t, int64_t, int64_t);

int main()
{
    char str[] = "Test";

    printf("strlen = %lu\n", strlen(str));
    printf("ft_strlen = %zu\n", ft_strlen(NULL));
    return(0);
}