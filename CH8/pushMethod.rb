# push method and pop method are opposites
# 'push' adds to the end of the array
# 'pop' removes the last item of the array 
# => AND tells you what it is

# 'last' is similar to 'pop'
# => it says what the last item is, but does not alter the array

favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittens'

puts favorites[0]
puts favorites.last
puts favorites.length
puts favorites.pop
puts favorites
puts favorites.length
puts favorites
