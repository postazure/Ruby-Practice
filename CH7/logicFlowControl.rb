puts 1 > 2 #returns "false"
puts 2 > 1 #returns "true"
puts ""
puts 5 >= 5 #returns "true"
puts 5 <= 4 #returns "false"
puts ""
puts 1 == 1 #retruns "true"
puts 2 != 1 #retruns "true"
puts ""
puts "cat" < "dog" #values compaired are order in dictionary (sort of)
puts ""
puts "lady bug" < "Xander" #capital letters are bigger/first values
puts "lady bug".downcase < "Xander".downcase
puts ""
puts 2 < 10 #true
puts '2' < '10' #false - comparing str, 1 comes before 2

# The returned true/false is not a string, its an object
# if you want a string you can '.to_s' them.
