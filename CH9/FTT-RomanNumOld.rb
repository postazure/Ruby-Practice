# Old-school Roman Numerals

def romanNum num
	numberIn = num.to_i 
	valM = numberIn / 1000
	numberIn = numberIn - (1000*valM)
	valD = numberIn / 500
	numberIn = numberIn - (500*valD)
	valC = numberIn / 100
	numberIn = numberIn - (100*valC)
	valL = numberIn / 50
	numberIn = numberIn - (50*valL)
	valX = numberIn / 10
	numberIn = numberIn - (10*valX)
	valV = numberIn / 5
	numberIn = numberIn - (5*valL)
	valI = numberIn

	return 'M'*valM + 'D'*valD + 'C'*valC + 'L'*valL + 'X'*valX + 'V'*valV +'I'*valI
end

puts "Enter a number and it will be turned to Old Roman."
user_number = gets.chomp
puts romanNum user_number
