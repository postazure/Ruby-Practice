

$roman_symbol = {"M"=> 1000, "D"=> 500, "C"=> 100, "L"=> 50,"X"=> 10, "V"=> 5, "I"=>1}

def getNumber
  userNum = gets.chomp.to_i

end

def numberBreakdown userNum
  romanNum_qty = []



  $roman_symbol.each_with_index do |(key, value), i|
    romanNum_qty[i] = userNum/value
    userNum -= (romanNum_qty[i]*value)
  end

  return romanNum_qty
end

def romanize arr_places
  $roman_symbol.each_with_index do |(key,value),i|
    print key*arr_places[i]
  end
  puts
end

puts """
This program will change an english number
into a Roman Numeral. It will not return 4 as IV
instead this will be displayed as IIII.

Please enter a number."""
puts romanize (numberBreakdown (getNumber))
