def multiply(first_num, second_num)
    first_num.to_f * second_num.to_f
end

def divide(first_num, second_num)
    first_num.to_f / second_num.to_f
end

def add(first_num, second_num)
    first_num.to_f + second_num.to_f
end

def subtract(first_num, second_num)
    first_num.to_f - second_num.to_f
end

def mod(first_num, second_num)
    first_num.to_f % second_num.to_f
end
puts "Please enter a number"
num_1 = gets.chomp
puts "Please enter another number"
num_2 = gets.chomp
puts "To multiply press 1, to divide 2, to add 3, to subtract 4, to get the remainder 5"
input = gets.chomp
if input == "1"
   puts multiply(num_1, num_2)
elsif input == "2"
    puts divide(num_1, num_2)
elsif input == "3"
    puts add(num_1, num_2)
elsif input == "4"
    puts subtract(num_1, num_2)
elsif input == "5"
    puts mod(num_1, num_2)
else 
    puts "invalid entry"
end 

