/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dskaliuk <dskaliuk@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/15 16:16:38 by dskaliuk          #+#    #+#             */
/*   Updated: 2023/03/15 16:16:42 by dskaliuk         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>

void	*ft_memcpy(void *dst, const void *src, size_t n)
{
	unsigned char	*pd;
	unsigned char	*ps;

	if (dst == src)
		return (dst);
	pd = (unsigned char *) dst;
	ps = (unsigned char *) src;
	while (n)
	{
		*pd = *ps;
		pd++;
		ps++;
		n--;
	}
	return (dst);
}
