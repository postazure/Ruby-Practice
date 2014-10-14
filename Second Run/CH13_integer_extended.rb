class Integer
  def to_eng
    if self == 5
      eng = 'five'
    elsif self == 42
      eng = 'forty-two'
    end
    return eng
  end
end

class Array
  def mixup
    start_array = self
    mixed_array = []

    start_array.length.times do |i|

      mixed_array[i] = start_array.choose
      start_array.delete(mixed_array[i])


    end

    mixed_array

  end

  def choose
    some_array = self

    some_array[rand(some_array.length)]
  end


end


max_array = [1,2,3,4,5]
puts max_array.mixup
