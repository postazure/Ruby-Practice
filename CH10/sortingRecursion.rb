words_to_sort = ["Apple","Pear","Banana","Lemon","Lime","Peanut"]
# sorted_words = []
# unsorted_words = []

def sort some_array 
	sortingRec some_array, []
end

def sortingRec unsorted_words, sorted_words

	if unsorted_words[0] > sortingRec(unsorted_words, sorted_words)
		sorted_words.push unsorted_words[0].pop
	else
		unsorted_words.push unsorted_words[0].pop
	end

	return unsorted_words

end







# words_to_sort.each do |words|
# 		if words > sorted_words.last
# 		sorted_words.push words_to_sort.pop
# 	end	
# end


puts sort words_to_sort