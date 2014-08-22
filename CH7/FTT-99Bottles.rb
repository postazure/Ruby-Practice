bottles = 99
while (bottles > 0)
	puts bottles.to_s + " Bottles of beer on the wall."
	bottles = bottles -1 
	puts "Take one down pass it around, " + bottles.to_s
	puts "bottles of beer on the wall."
	puts ""
end