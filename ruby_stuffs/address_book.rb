area_codes = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

def get_city_names(some_hash)
  some_hash.keys
end

def get_area_code(some_hash, city)
  some_hash[city]
end

loop do 
  puts "Would you like to find an area code? (Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  puts get_city_names(area_codes)
  puts "Select the city you would like to look up"
  city = gets.chomp.downcase
  if area_codes.include?(city)
    puts get_area_code(area_codes, city)
  else
    puts "That was an invalid city"
  end
end 