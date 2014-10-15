do_you_like = Proc.new do |good_stuff|
  puts "I like #{good_stuff}!"
end

do_you_like.call 'chocolate'
#------------------------------------
def do_self_importaintly some_proc
  puts "Stand back I'm going to try "
  some_proc.call
  puts "Ok, I'm done."
end

say_science = Proc.new do
  puts 'Science.'
end

do_self_importaintly say_science
#-----------------------------------
def maybe_do some_proc
  if rand(2) == 0
    some_proc.call
  end
end

def twice_do some_proc
  some_proc.call
  some_proc.call
end

maybe_do say_science
twice_do say_science
