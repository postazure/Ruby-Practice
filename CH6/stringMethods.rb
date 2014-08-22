# Reverse
var1 = 'stop'
var2 = 'deliver repaid desserts'
var3 = '....TCELES B HSUP a magic spell?'

puts var1.reverse # '.reverse' DOESN'T change the stored value
puts var2.reverse
puts var3.reverse

puts var1
puts var2
puts var3

puts ""

# length
puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + ' characters'
puts 'in your name, ' + name + '?'

puts ""
#upcase
letters = 'aAbBcCdDeE'

puts letters.upcase

#downcase

puts letters.downcase

#swapcase

puts letters.swapcase

#capitalize

puts letters.capitalize
puts ' a'.capitalize #this line shows that only the first char is capitalized
puts letters # remains unchanged
