puts "Hello, what's your name?"
name = gets.chomp
puts "Hello, " + name + "."
if name == "Max"
	puts "What a lovely name!" #Does not NEED to be indented
else
	puts "What an... 'interesting' name."
end