# How many seconds old are you?
def readable_number num
  if num.class != Fixnum && num.class != Float
    puts "\tError: \tmethod=> readable_number, invalid type of input (Not Fixnum, nor Float)"
    print "\t\tnum.class=> "
    return num.class
  else
    num = num.to_s

    if num.index(".") != nil
      decimal_spacer = num.index(".") - num.length
    else
      decimal_spacer = 0
    end

    num_of_segments = (num.length+decimal_spacer)/3

    num_of_segments.times do |i|
      num.insert(decimal_spacer-4*(i+1), ",")
    end

    if num[0] == ','; num = num[1..num.length] end
  end

  return num

end

now = Time.new
puts "Year"
year =gets.chomp.to_i
puts "month"
month = gets.chomp.to_i
puts 'day'
day = gets.chomp.to_i
puts 'hour'
hour = gets.chomp.to_i
puts 'minute'
minute = gets.chomp.to_i



birth = Time.local(year,month,day, hour, minute)

puts readable_number(now - birth)
