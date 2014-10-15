valHash = {}

valHash['M'] = 1000
valHash['D'] = 500
valHash['C'] = 100
valHash['L'] = 50
valHash['X'] = 10
valHash['V'] = 5
valHash['I'] = 1

def getUserVal(hash)
	print "Enter a number in Roman Numerals (M,D,C,L,X,V,I):"
	while true
		userNum_roman = gets.chomp.upcase

		if (checkValidChar(userNum_roman, hash) == false) 
			#string contains char other than (M,D,C,L,X,V,I)
			puts "Your number contains invalid characters. \nEnter a new value."
		elsif (checkRomanOrder(userNum_roman, hash) == false)
			#sring's order is invalid
			puts "The numbers you have entered are out of order. \nEnter a new value."
		else
			#vaild input
			return userNum_roman	
		end
	end
end

def checkValidChar(string, hash) #Makes sure all char are valid
	letter = ''
	string.each_char do |letter|
		if hash[letter] == nil
			return false
		end
	end
	return true
end

def checkRomanOrder(string, valHash) #Makes sure characters are in a valid order
	smallNum_count = 0
	letter_prev = string[0]
	string.each_char do |letter|
		if valHash[letter] <= valHash[letter_prev]
			#valid
			smallNum_count = 0 #reset count between val types

		elsif valHash[letter] > valHash[letter_prev]
			if smallNum_count >= 1
				#too many small numbers before big
				return false
			end
			puts "Counter +1"
			smallNum_count += 1
		else
			return false

		end
		letter_prev = letter
	end
	return true
end

puts getUserVal(valHash)
