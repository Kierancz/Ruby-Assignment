def palindrome?(string)
	letters = string.downcase.scan(/\w/)
	puts letters == letters.reverse
end

p "Testing palindrome.rb..."
palindrome?("A man, a plan, a canal -- Panama")
palindrome?("Madam, I'm Adam")
palindrome?("Abracadabra")
