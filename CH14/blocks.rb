class Array
	def each_even(&was_a_block_now_a_proc)
		# We start with "true" beccause 
		# arrays start with 0, which is even.

		# the '&' tells the method to turn this into a proc

		is_even = true
		self.each do |object|
			if is_even
				was_a_block_now_a_proc.call object
			end

			# Toggle from even to odd, or odd to even.

			is_even = !is_even 
			# '!' inverts the value true/false
			# -1/1, etc...
		end
	end
end

fruits = ['apple', 'bad apple', 'cherry', 'durian']
fruits.each_even do |fruit|
	puts "Yum! I just love #{fruit} pies, don't you?"
end

# Note: we are getting the even numbered "elements" (in computer)
# however, arrays start with 0. So we actually need the other ones,
# the odd ones to us.

[1,2,3,4,5].each_even do |odd_ball|
	puts "#{odd_ball} is NOT an even a number!"
end

		
