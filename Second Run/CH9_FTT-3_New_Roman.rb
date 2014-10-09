

$roman_symbol = {"M"=> 1000, "D"=> 500, "C"=> 100, "L"=> 50,"X"=> 10, "V"=> 5, "I"=>1}

def getNumber
  userNum = 0
  while userNum <= 0
    puts "    Please enter a number greater than 0."
    print "English Number >> "
    userNum = gets.chomp.to_i
  end
  return userNum
end

def numberBreakdown userNum
  romanNum_qty = []

  $roman_symbol.each_with_index do |(key, value), i|
    romanNum_qty[i] = userNum/value
    userNum = userNum - (romanNum_qty[i]*value)
  end

  return romanNum_qty
end

def romanize arr_places

  last_key = ''
  last_printed_key = ' '
  roman_number = ''
  $roman_symbol.each_with_index do |(key,value),i|
    if arr_places[i] == 4
      arr_places[i] -= 4
      if last_printed_key == last_key
        roman_number = roman_number.chop
      end
      roman_number = roman_number + key + last_key
    elsif arr_places[i] != 0
      roman_number += (key*arr_places[i])
      last_printed_key = key
    end
    last_key = key
  end
  return roman_number
end

puts """
    This program will change an english number
    into a Roman Numeral.
"""
eng_num = getNumber
roman_num = romanize (numberBreakdown (eng_num))
puts
puts "    #{eng_num} converted to Roman Numerals is: #{roman_num}"
puts
