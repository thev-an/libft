/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: antheven <antheven@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/08/27 17:00:37 by antheven          #+#    #+#             */
/*   Updated: 2021/08/27 17:11:07 by antheven         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	*ft_memmove(void *dest, const void *src, size_t n)
{
	void	*start_dest;

	start_dest = dest;
	if (dest == src)
		return (dest);
	if (dest < src)
		while (n-- > 0)
			*(dest + n) = *(src + n);
	else
		while (n-- > 0)
			*(dest++) = *(src++);
	return (start_dest);
}
