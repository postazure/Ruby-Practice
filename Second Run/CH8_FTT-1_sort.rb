#Sort Words

def getWords
  word = 'new words'
  words_to_sort = []
  while (!word.empty?)
    print "Enter Word >>"
    word = gets.chomp.capitalize
    puts

    words_to_sort.push word
  end
  return words_to_sort
end


def sort_array(sortMe)
  ordered_array = []

  while !sortMe.empty?

    if ordered_array.empty?
      #sorted array is empty
      ordered_array.push(sortMe[0])

    else
      ordered_array.each_with_index do |item, i|
        if sortMe[0] < item
          ordered_array.insert(i, sortMe[0])
          break
        end

        if ordered_array.length == i+1
          ordered_array.push(sortMe[0])
          break

        end

      end
    end

    sortMe.delete_at(0)

  end
  return ordered_array
end

#------------------------------------------
puts "This program will sort words that you add to the system."
puts "Type just one (1) word per prompt. When done hit enter with no text."
puts sort_array(getWords)
