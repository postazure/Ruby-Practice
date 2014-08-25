# New-school Roman with Arrays
# Converts numbers to the Roman numerals 
# numbers with 4s will display correctly ie. IV and not IIII

def romanNum num
	numNames = ['M','D','C','L','X','V','I', ""]
	numVal = [1000, 500, 100, 50, 10, 5, 1]
	namesQty = []
	namesQty_prec = [0]
	valString = ""
	
# Stores values in string by type (M,D,C...)
	
	numVal.each_with_index do |romanVal, i|
		qty = num/romanVal
		num = num - (romanVal*qty)

		namesQty_prec.push 0
# Checks to convert 4s (IV not IIII)
		if romanVal != 1000
			while qty >= 4
				namesQty_prec[i] = namesQty_prec[i] + 1
				namesQty[i-1] = namesQty[i-1] +1
				qty = qty - 4 
			end
		end
		namesQty.push qty


	end

# Builds output sting based on array
	i = 0
	7.times do
		valString = valString + numNames[i+1]*namesQty_prec[i+1]
		valString = valString + numNames[i]*namesQty[i]
		i = i+1
	end

	return valString
end

puts "Enter Val"
user_number = gets.chomp

puts romanNum user_number.to_i

