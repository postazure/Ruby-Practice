prof = 'We tore the universe a new space-hole, alright!'

puts prof[12, 8] # [start, length]
puts prof[12..19] # [start..end]

puts

def is_avi? filename
	filename.downcase[-4..-1] == '.avi' #files ending with ".avi"
	# (-)negative string index starts at the end of string
end

puts is_avi? ('House.avi')

puts is_avi? ('plants.jpg')