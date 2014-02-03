def count_words(string)
	h = Hash.new(0)
	string.downcase.scan(/\w+/) do |w|
	h[w] += 1
	end	
	p h
end	

p "Testing word count method..."
count_words("A man, a plan, a canal -- Panama")
count_words("Doo bee doo bee doo")
