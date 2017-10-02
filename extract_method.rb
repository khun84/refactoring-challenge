#extract_method.rb
#use this as tips for the first one : http://refactoring.com/catalog/extractMethod.html

# username = "Alice"
#
# if ( username.length > 3 && username.length <= 10 ) || ( username.downcase.start_with?("a", "e", "i", "o", "u") )
# 	puts "Congratulations #{username}! You won 10 dollars!"
# else
# 	puts "Thanks for joining!"
# end
#
# username = "Bobby"
#
# if ( username.length > 3 && username.length <= 10 ) || ( username.downcase.start_with?("b", "g", "l", "p") )
# 	puts "Congratulations #{username}! You won 50 dollars!"
# else
# 	puts "Thanks for joining!"
# end
#
# username = "Xena"
#
# if ( username.length > 3 && username.length <= 10 ) || ( username.downcase.start_with?("q", "u", "x", "y", "z") )
# 	puts "Congratulations #{username}! You won 100 dollars!"
# else
# 	puts "Thanks for joining!"
# end

# REFACTRED TO THE FOLLOWING USING METHOD EXTRACT

def username_length_fulfilled?(username)
    username.length > 3 && username.length <= 10
end

def username_start_with_fulfilled?(username)
    username.downcase.start_with?("q", "u", "x", "y", "z")
end

def username_won?(username)
    username_length_fulfilled?(username) || username_start_with_fulfilled?(username)
end

def print_result(username)
    if username_won?(username)
        puts "Congratulations #{username}! You won 100 dollars!"
    else
        puts "Thanks for joining!"
    end
end

print_result('Alice')
print_result('Bobby')
print_result('Xena')
