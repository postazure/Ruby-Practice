

#Conversion Constants
seconds_per_minute = 60
minutes_per_hour = 60
hours_per_day = 24
days_per_year = 365 #or 366/4 or 365.25
years_per_decade = 10

# Hours in a year
hours_per_year = hours_per_day * days_per_year
puts "Hours in a year #{hours_per_year}"

# Minutes in a decade
minutes_per_decade = minutes_per_hour * hours_per_year * years_per_decade
puts "Minutes in a decade #{minutes_per_decade}"

#Your age in seconds
puts """
I'll tell you how many seconds you've been on
this Earth (according to your years).
So, ....
How many years old are you???
"""
years_old = gets.chomp.to_i
puts "Really? You dont look a day over #{(years_old - 10).abs}."

myAge_seconds = seconds_per_minute * minutes_per_hour * hours_per_year *
                years_old

puts
puts "Well, if you're really #{years_old} then you're #{myAge_seconds} seconds old."

# Chris Pines Age
cp_age = 1160 * 1000000 #seconds old
cp_age_in_years = cp_age/(seconds_per_minute*minutes_per_hour*
                  hours_per_year)
puts
puts "Chris Pines was #{cp_age_in_years} years old as of publish date."
