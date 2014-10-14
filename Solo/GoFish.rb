class Deck
	def initialize
		@deckCards = []
		suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
		suits.each do |suit|
			9.times do |i| # numbered cards
				card = "#{i+1} of #{suit}"
				if i >= 1
					@deckCards.push card 
				end
			end
		
			faceCards = ['Jack','Queen','King','Ace']
			faceCards.each do |face|
				card = "#{face} of #{suit}"
				@deckCards.push card
			end
		end
	end

	def draw
		drawingCardIndex = rand(@deckCards.length)
		drawingCard = @deckCards[drawingCardIndex]
		@deckCards.delete_at(drawingCardIndex)

		return drawingCard
	end

	def cards_in_deck_qty
		return @deckCards.length
	end
	def cards_in_deck
		return @deckCards
	end
end

class Hand
	def initialize
		@handCards = []
	end

	def play cardName
		if @handCards.include? cardName
			#Card is actually in player's hand
			@handCards.delete(cardName)
			return cardName
		else
			puts "Error1: The specified card is not in hand."
		end
	end 

	def draw cardName
		@handCards.push cardName
	end

	def cards_in_hand
		return @handCards
	end

	def cards_in_hand_qty
		return @handCards.length
	end
end

deck = Deck.new
player = Hand.new
computer = Hand.new

def game_start
	puts "===================="
	puts "Go Fish by Postazure"
	puts "===================="
	puts
	puts "You have a hand of 5 cards, you may guess a card"
	puts "of the same rank as one you have."
	puts "(5 is a 5, Ace is 1, Queen is 12)"
	puts

	5.times do # Deals cards
		player.draw deck.draw
		computer.draw deck.draw
	end
end

def turn_human
	puts "What card (rank) will you ask for?"
	guess = gets.chomp.to_i

	

end