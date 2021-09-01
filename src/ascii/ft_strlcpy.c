/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: antheven <antheven@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/08/28 13:55:10 by antheven          #+#    #+#             */
/*   Updated: 2021/08/28 13:59:24 by antheven         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>

size_t	ft_strlcpy(char *dest, const char *src, size_t n)
{
	ft_bzero(dest, n);
	ft_memcpy(dest, src, n - 1);
	return (ft_strlen(src));
}
