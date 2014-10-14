# Write a program to read in names and birthdates from a text file. It should
# then ask you for a name. You type one in, and it tells you when that person's
# next birthday will be (and, for the truly adventurous, how old they will be).
# The input file should look something like this:

# first_name last_name, month day,year
require 'time'

def getNext_bday b_date, name, bday_info
  now = Time.new
  b_date = Time.parse(b_date)
  b_day = Time.local(now.year,b_date.month,b_date.day)


  next_bday = b_day - now
  if next_bday > 0
    if (bday_info['compare'].class == String || bday_info['compare'] > next_bday)
      bday_info['name'] = name
      bday_info['compare'] = next_bday
      bday_info['years_old'] = (now.year - b_date.year)
    end
  end

end

def scanFile read_str, birthdays, bday_info

  read_str.each_line do |text|
    divider = text.index(',')
    name = text[0..divider-1]
    b_date = text[divider+2..text.length].chomp

    birthdays[name] = b_date
    getNext_bday b_date, name, bday_info
  end
end

filename = 'birthdayIndex.txt'
read_str = File.read filename

birthdays = {}
bday_info = {'compare' => '', 'name' => 'name', 'years_old' => ''}

scanFile read_str, birthdays, bday_info

puts "The next person's Birthday is #{bday_info['name']}, they were born #{birthdays[bday_info['name']]}."
puts "They will be #{bday_info['years_old']}."
