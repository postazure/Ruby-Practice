#'M' is visually more dense than "o".

M = 'land'
o = 'water'
world = [	[o,o,o,o,o,o,o,o,o,o,o],
			[o,o,o,o,M,M,o,o,o,o,o],
			[o,o,o,o,o,o,o,o,M,M,o],
			[o,o,o,M,o,o,o,o,o,M,o],
			[o,o,o,M,o,M,M,o,o,o,o],
			[o,o,o,o,M,M,M,M,o,o,o],
			[o,o,o,M,M,M,M,M,M,M,o],
			[o,o,o,M,M,o,M,M,M,o,o],
			[o,o,o,o,o,o,M,M,o,o,o],
			[o,M,o,o,o,M,o,o,o,o,o],
			[o,o,o,o,o,o,o,o,o,o,o]]

def continent_size world, x, y

	if world[y][x] != 'land'
		#either its water or we've counted it,
		#but either way we down want to count it now.

		return 0
	end

	# so first count this tile...
	size = 1
	world[y][x] = 'counted land'


	# ... then we cound count all of the neighboring eight tiles
	# (and of course their neighbors by way of recursion).

	size = size + continent_size(world, x-1, y-1)
	size = size + continent_size(world, x, y-1)
	size = size + continent_size(world, x+1, y-1)
	size = size + continent_size(world, x-1, y)
	size = size + continent_size(world, x+1, y)
	size = size + continent_size(world, x-1, y+1)
	size = size + continent_size(world, x, y+1)
	size = size + continent_size(world, x+1, y+1)

	puts world

	size

end
	puts continent_size(world, 5, 5)
