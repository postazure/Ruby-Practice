puts "Starting Year: "
startYear = gets.to_i
puts "Ending Year: "
endYear = gets.to_i


if endYear - startYear >= 0
	currentYear = startYear
	while  endYear >= currentYear
		if currentYear%4 == 0
			if currentYear%100 == 0 && currentYear%400 == 0
				puts currentYear.to_s + " is a leap year."
			elsif currentYear%100 != 0
				puts currentYear.to_s + " is a leap year."
			end
		end

		currentYear = currentYear + 1
	end
else
	puts "Your trying to trick me,"
	puts " your ending year is before your starting year."
end