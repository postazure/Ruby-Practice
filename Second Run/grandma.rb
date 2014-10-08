def please_leave(speach)

  if speach == 'BYE'
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
      puts "NO, NOT SINCE 19#{rand(20..50)}!"
    else
      puts "Fine I know when I'm not wanted."
    end

  else
    puts "HUH!? SPEAK UP SONNY!!"
  end


end
