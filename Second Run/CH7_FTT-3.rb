#Leap Years
        # Criteria for a leap year:
        # Divisable by 4
        # Not divisable by 100 unless also Divisable by 400

puts "Starting Year"
s_year = gets.chomp.to_i

puts "End Year"
e_year = gets.chomp.to_i

(s_year..e_year).each do |i|
  if i%4 == 0 #perfectly divisable by 4
    if i%100 == 0 and i%400 == 0
      puts "#{i} is a leap year"
    #elsif i%100 == 0 and i%400 != 0
       # not leap year
    elsif i%100 != 0
      puts "#{i} is a leap year"
    end
   #else
     # not a leap year
   end

end
