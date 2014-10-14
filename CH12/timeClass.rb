time = Time.new # The time when this runs
time2 = time + 60 # 1 minute later (60secs)

puts time
puts time2


puts Time.local(2000,1,1) #the year 2000, jan, the 1st
puts Time.local(1976, 8, 3, 13, 31) #YYYY,MM,DD,hh,mm

puts Time.gm(1955,11,5) #GMT Date Only

puts time - Time.local(2014,8,29,9,53) 
# produces the number of seconds
