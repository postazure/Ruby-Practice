class Integer
  def to_comma

      num = self.to_s

      num_of_segments = num.length/3
      if num.length%3 == 0
        num_of_segments -= 1
      end


      num_of_segments.times do |i|
        num.insert(-4*(i+1), ",")
      end

      #if num[0] == ','; num = num[1..num.length] end

    return num
  end


end

puts 1800123.to_comma
