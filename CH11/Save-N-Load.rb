# filename does not have to end with ".txt" but it should
filename = 'ListerQuote.txt'

test_string = 'I promise that i swear absolutely that ' + 
				'I will never mention gazpacho soup again.'

# The 'w' = write-access
File.open filename, 'w' do |f|
	f.write test_string
end				

read_string = File.read filename

puts(read_string == test_string) # return comparison
