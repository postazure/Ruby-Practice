class Array
	def shuffle
		shuffled = []
		deck = []
		

		self.each_with_index do |items, i|
			deck.push i
		
		end


		self.each do |items|
			randomSlot = rand(deck.length)
			
			cardNumber = deck[randomSlot]
			deck.delete_at(randomSlot)

			shuffled.push self[cardNumber]

		end
		return shuffled
	end
end


my_array = ['A','B','C','D','E','F','G']
puts my_array.shuffle



