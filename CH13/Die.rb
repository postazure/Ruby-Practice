# Defining a Class
class Die
	# Initialize we can set the starting state of the object
	def initialize
		# We can set it to whatever we want, like 6, 
		# => or just roll it
		roll
	end
	
	def roll
		@number_showing = 1 + rand(6)
	end

	def cheat 
		puts "Cheat Value? (1-6)"
		while true
			cheatVal = gets.to_i
			@number_showing = cheatVal 
			if(cheatVal >= 1 && cheatVal <= 6)
				break
			else
				puts "Must be between 1 and 6. I mean seriously!?"
			end
		end
	end

	# Instance Variables - they have the @ in front
	# => they last as long as the object lasts
	def showing
		@number_showing
	end
end

puts Die.new.showing # Display the starting value (initialize)

die = Die.new

die.roll
puts die.showing
puts die.showing

die.roll
puts die.showing


die.cheat
puts die.showing