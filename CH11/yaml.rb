require 'yaml' # so you can save objects

test_array = [	'Give Quiche A Chance',
				'Mutants Out!',
				'Chameleonic Life-Forms, No Thanks']

test_string = test_array.to_yaml # similar to .to_s, or .to_i

filename = 'RimmerTShirts.txt'

File.open filename, 'w' do |f| # the 'w' means write
	f.write test_string
end

read_string = File.read filename

read_array = YAML::load read_string

puts(read_string == test_string)
puts(read_array == test_array)
