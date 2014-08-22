=begin
--== No elsif ==--
puts "Hello, what's your name?"
name = gets.chomp
puts "Hello, " + name + "."
if name == "Max"
	puts "What a great name."
else
	if name == "Elyse"
		puts "What a great name."
	end
end
=end

=begin
--== With 'elsif' ==--
puts "Hello, what's your name?"
name = gets.chomp
puts "Hello, " + name + "."
if name == "Max"
	puts "What a great name."
elsif name == "Elyse"
	puts "What a great name."
end
=end

# or (||) statement. 
# Note: 'or' means either or both == true
puts "Hello, what's your name?"
name = gets.chomp
puts "Hello, " + name + "."
if name == "Max" || name == "Elyse"
	puts "What a great name."
end

#Note: and (&&), not (!)

