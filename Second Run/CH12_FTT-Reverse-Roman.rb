#Convert Roman Numerals to English Numbers
#by postazure, 10/12/14
roman_numerals = {"M"=> 1000, "D"=> 500, "C"=> 100, "L"=> 50,"X"=> 10, "V"=> 5, "I"=>1}

def toEnglish romanString, roman_numerals
  engNum = 0
  account_for_double_char = 0

  romanString.length.times do |i|
    i += account_for_double_char #ie. IV is really just 1 char

    if  romanString.length <= i+1 # Last char?
      engNum += roman_numerals[romanString[i]]
      break
    elsif roman_numerals[romanString[i]] >= roman_numerals[romanString[i+1]] #normal
      engNum += roman_numerals[romanString[i]]
    elsif roman_numerals[romanString[i]] < roman_numerals[romanString[i+1]] # IV
      engNum += (roman_numerals[romanString[i+1]]-roman_numerals[romanString[i]])
      if romanString.length == i+2 # Is this the last 2 chars?
        break
      end
      account_for_double_char += 1
    end

  end
  return engNum
end

def getNum roman_numerals #clunky <------------
  romanString = ''
  puts "Please entera a valid roman numeral M-I"
  print "Roman Numerals >> "
  romanString = gets.chomp.upcase

  while !validRoman(romanString, roman_numerals)

    puts "Please entera a valid roman numeral M-I"
    print "Roman Numerals >> "
    romanString = gets.chomp.upcase

  end
  return romanString
end


def validRoman romanString, roman_numerals

  romanString.each_char do |char|

    if !roman_numerals.has_key?(char)
      puts "Not Valid, use M,D,C,L,X,V,I"
      return false
    end

  end
  return true
end

puts "Please note: This program doesn't care if you enter roman numerals properly, only that you use roman numerals."
puts
romanString = getNum roman_numerals
displayString = "#{romanString} converted to english is #{toEnglish romanString, roman_numerals}"
puts "\t"+"-"*displayString.length
puts "\t#{displayString}"
puts "\t"+"-"*displayString.length
