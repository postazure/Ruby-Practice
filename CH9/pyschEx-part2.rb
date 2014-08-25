def ask question
	while true
		puts question
		reply = gets.chomp.downcase
		if(reply == 'yes' || reply == 'no')
			if reply == 'yes'
				answer = true
			else
				answer = false
			end
			break
		else
			puts 'Please answer "yes" or "no".'
		end
	end
	return answer
end

puts 'Hello, and thank you for your time. Please answer "yes" or "no".'
puts

ask "Do you like tacos?"
ask "Do you like burritos?"
wets_bed = ask 'Do you wet the bed?'
puts
if wets_bed == true
	puts "You wet the bed."
elsif wets_bed == false
	puts "You may still wet the bed and not realize it."
else
	puts "Bed wetting error."
end

