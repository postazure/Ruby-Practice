puts "Hello, and welcome to seventh grade Endlish."
puts "My name is Mrs. Gabbard. And your name is...?"
name = gets.chomp
if name == name.capitalize
	puts "Please take a seat, " + name + "."
else
	puts name + "? You mean " + name.capitalize + ", right?"
	puts "Don't you even know how to spell your name?"
	reply = gets.chomp
	if reply.downcase == "yes"
		puts "Hmmph! Well, sit down!"
	else
		puts "Get out!!"
	end
end
