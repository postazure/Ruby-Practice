#Deaf Grandma

$leave_count = 0 # $ is the prefix to use a global var

def please_leave(speach)

  if speach == 'BYE'
    $leave_count +=1
  end

  if ($leave_count == 3)
    return true
  else
    return false
  end
end


leaving = false
while (leaving == false)
  puts "Be polite and say something to Grandma."
  speach = gets.chomp

  if speach == speach.upcase

    leaving = please_leave(speach.upcase)

    if leaving == false
      puts "NO, NOT SINCE 19#{rand(20)+20}!" #1920-1939
    else
      puts "Fine I know when I'm not wanted."
    end

  elsif speach != speach.upcase
    puts "HUH!? SPEAK UP SONNY!!"
  else
    puts "Error: upcase"
  end


end
