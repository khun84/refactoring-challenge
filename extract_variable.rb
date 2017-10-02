# extract_variable.rb
#https://refactoring.com/catalog/extractVariable.html

username = "Alice"

username_length_valid = (username.length > 3) && (username.length <= 7)
username_downcase_valid = username.downcase.start_with?("a", "e", "i", "o", "u")


if username_length_valid || username_downcase_valid
	puts "Congratulations #{username}! You won 1 million dollars!"
else
	puts "Please try again!"
end

