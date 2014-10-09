#Table of Contents


#to add more chapter titles add them to array
titles = ["Getting Started", "Numbers", "Letters"]

#add chapter start page
pages  = [" 1"              , " 9"      , "13"]

puts "="*80
puts "Table of Contents".center(80)

titles.each_with_index do |ch_name, i|
  print "Chapter #{i+1}: #{ch_name}".ljust(40)
  puts "page #{pages[i]}".rjust(40)

end

puts
puts "="*80
puts
