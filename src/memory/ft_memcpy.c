/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: antheven <antheven@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/08/27 16:56:40 by antheven          #+#    #+#             */
/*   Updated: 2021/08/27 17:01:25 by antheven         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	*ft_memcpy(void *dest, const void *str, size_t n)
{
	void	*start_dest;

	while (n-- > 0)
		*dest++ = *src++;
	return (start_dest);
}
