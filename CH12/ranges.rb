#this is your range literal
letters = 'a'..'c'

#convert range to array
puts (['a','b','c'] == letters.to_a)

#iterate over a range:
('A'..'Z').each do |letter|
	print letter
end

puts 

the70s = 1970..1979

puts the70s.min #smallest item

puts the70s.max #largest item

puts(the70s.include?(1979))
puts(the70s.include?(1980))
puts(the70s.include?(1974.5)) #includes floats