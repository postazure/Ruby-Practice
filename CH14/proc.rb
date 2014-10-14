# proc holds a block of code that can be called

toast = Proc.new do 
	puts "Cheers!"
end

toast.call
toast.call
toast.call

puts


# proc can take parameters

do_you_like = Proc.new do |good__stuff|
	puts "I *really* like #{good__stuff}!"
	
end

do_you_like.call "chocolate"
do_you_like.call "Ruby"


puts 


# Note: Procs are NOT methods they're objects
# Pass a proc to a methods
def do_self_importantly some_proc
	puts "Everybody just HOLD ON! I'm doing something..."
	some_proc.call
	puts "OK everybody, I'm done. As you were."
end

say_hello = Proc.new do 
	puts "hello"
end

say_goodbye = Proc.new do 
	puts "goodbye"
end

do_self_importantly say_hello
do_self_importantly say_goodbye