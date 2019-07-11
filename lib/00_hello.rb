
def ask_first_name
puts "Bonjour, quel est ton nom ?"
user_name = gets.chomp
return user_name
end

def say_hello(user_name)
puts "Bonjour #{user_name}"
end

def perform
	user_name = ask_first_name
	say_hello (user_name)
end

perform