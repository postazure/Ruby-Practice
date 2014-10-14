months = ['jan','feb','mar','apr','may','jun','jul','aug','sep','oct','nov','dec']

def getBdate
	puts "What year were you born in?"
	b_year = gets.chomp
	puts "What month was it? (in numbers)"
	b_month = gets.chomp

	while true
		if b_month.to_i >= 1 || b_month.to_i <= 12
			break
		else
			b_month = months.index(b_month.downcase) + 1
			if b_month != nil
				break
			end
		end
		puts "Not valid, either enter a number or 3 char. abreviation"

	end

	b_date = Time.local(b_year, b_month)
	return b_date

end



def spanker (b_date)


	delta_b = Time.new - b_date

	spanks = (delta_b/(3600*24*365.25)).to_i 

	puts "You are entitled to #{spanks} spanks for all your years on this earth."
end

spanker (getBdate)

