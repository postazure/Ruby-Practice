#99 Bottles of Beer on the Wall

99.times do |i|
  puts """#{99-i} Bottles of beer on the wall.
  Take one down, pass it around #{99-(i+1)} bottles of beer.
  """

end
