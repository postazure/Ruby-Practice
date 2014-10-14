def factorial num
	if num < 0
		return "you can't take the factorial of a negative number!"
	elsif num <= 1
		1
	else
		num * factorial(num-1)
	end
end

puts factorial(5)