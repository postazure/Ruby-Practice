puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number!'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts "Your momma did.".to_f
puts ""
puts 'stringy'.to_s
puts 3.to_i

=begin
15.0
99.999
99

5
0
0.0

stringy
3

When converting to f or i it only does so if
the line starts with a number. Otherwise it returns 0.0 
or 0, repectively.
=end