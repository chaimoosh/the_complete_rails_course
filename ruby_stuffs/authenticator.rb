users = [
    {username: "user1", password: "password1"},
    {username: "user2", password: "password2"},
    {username: "user3", password: "password3"},
    {username: "user4", password: "password4"},
    {username: "user5", password: "password5"}
]

def auth_user(username, password, list_of_users)
    list_of_users.each do |user| 
        if user[:username] == username && user[:password] == password
            return user
        end
    end
    return "Incorrect credentials"
end

puts "Welcome to the authenticator"
25.times {print"-"}
puts

i = 0
while i < 3
    puts "press n to quit or any other key to continue"
    input = gets.chomp.downcase
    break if input == "n"
    
    puts "Please enter your username"
    username = gets.chomp
    puts "Please enter your password"
    password = gets.chomp
    
    authentication = auth_user(username, password, users)
    puts authentication
    i += 1
end

puts "You have exceeded the number of attempts" if i == 3

