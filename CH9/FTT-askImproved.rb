def ask question
	while true
		puts question
		reply = gets.chomp.downcase
		if(reply =='yes' || reply == 'no')
			break
		else
			puts 'Please answer "yes" or "no".'
		end
	end
	return reply	
end
