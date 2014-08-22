puts "Speak to your grandma, she's hard of hearing."

byeCount = 0

while (byeCount < 3)
	phrase = gets.chomp
	if phrase == phrase.upcase
		year = rand(51)
		puts "No, not since " + (1900 + year).to_s + "!"
	else
		puts "Huh?! Speak up!"
	end
	if (phrase == "BYE")
		byeCount = byeCount +1
	end
end