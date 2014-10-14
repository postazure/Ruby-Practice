

def get_noise tone
	hours = Time.new.hour
	if hours > 12
		hours = hours - 12
	end
end


tone = Proc.new |hours|
	hours.times do
		puts 'DONG!'
	end
end





