class OrangeTree
	def initialize
		@years = 1
		@orangeQty = 0
		@feetTall = 0
	end

	def grow howmuch

		puts "Another year passes and your Orange Tree grows a little taller."
		
		@feetTall += howmuch
		
	end

	def next_year

		if @orangeQty > 0
			puts
			puts "#{@orangeQty} fall from the orange tree's branchs in winter."
			puts
			@orangeQty = 0
		end
		@years += 1
		if @years <= 20
			# Grow Taller
			if @years <= 3
				grow 1.5
			elsif (@years >=4 && @years <= 10)
				grow 1
			else
				grow 0.5
			end
			# Grow Oranges
			if @feetTall > 5
				fruit = (@years * (2+rand(5))).to_i
				
				@orangeQty = fruit 
				puts "It's now #{@years} old and produced #{@orangeQty}s."
				puts
			end
		else
			puts
			puts "Your tree is dead."
			exit
		end
	end

	def pick
		if @orangeQty > 0
			@orangeQty -= 1
			puts
			puts "You picked an Orange."
			puts "You have #{@orangeQty} left on the tree."
		else
			puts "I'm sorry, you've picked all the oranges this year."
		end
	end

	def how_tall
		return @feetTall
	end

	def fruit
		return @orangeQty
	end
end
		
my_tree = OrangeTree.new

5.times do
	my_tree.next_year	
end

3.times do
	my_tree.pick
end

8.times do
	my_tree.next_year
end

my_tree.how_tall

7.times do
	my_tree.pick
end

7.times do
	my_tree.next_year
end
