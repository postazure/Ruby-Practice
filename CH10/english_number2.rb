def english_num number
	if number < 0 
		return "Please enter a number zero or greater."
	elsif number > 100 
		return "Please endter a number 100 or less"
	end

	ones = ['zero','one','two','three','four','five','six','seven','eight','nine']
	tens = ['zero', 'ten','twenty','thirty','fourty','fifty','sixty','seventy', 'eighty','ninty']
	teens = ['ten', 'eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']

	num_string = ''

	left = number
	write = left/100

	if write > 0
		if write == 1
			num_string = num_string + teens[left]
		else
			num_string = num_string + tens[write]
		end

		if left > 0
			num_string = num_string + '-'
		end
	end
	write = left
	left = 0

	if write > 0
		puts ones
		num_string = num_string + ones[write]
	end

	if num_string == ''
		return 'zero'
	end
	return num_string
end

puts english_num 5
puts english_num 42

