# Full name greeting
puts """
I would like to great you properly,
but I don't know who you are.

What is your first name?
"""
f_name = gets.chomp.capitalize
puts "...and your last name?"
l_name = gets.chomp.capitalize

puts
puts """
Well in that case,
It is a pleasure to
meet you #{f_name} #{l_name}.

"""
