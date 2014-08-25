def double_this num
	num_times_2 = num*2
	puts num.to_s + ' doubled is ' + num_times_2.to_s
end

double_this 44

puts num_times_2.to_s #this calls a local variable from a different method
