def say_moo number_of_moos
	puts 'moooo....'*number_of_moos

	return "This is the retuned string" #this is the returned value
end

return_val = say_moo 3
puts return_val

#Note: the 'return' key word is explicit,
# => the expression returned can also be returned without
# => the explicit keyword for return.