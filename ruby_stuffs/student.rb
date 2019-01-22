require 'bcrypt'
require_relative 'crud'
class Student
  include Crud 
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first, last, email, username, password)
    @first_name=first 
    @last_name=last 
    @email=email 
    @username=username
    @password=password
  end 

end 


chaim = Student.new("Chaim", "Reisman", "chaim@chaim.com", "chaim1", "password")
hash = chaim.create_hash_digest(chaim.password)
puts hash
puts chaim.password
# puts chaim
# puts chaim.first_name
# puts chaim .last_name
# puts chaim.email 
# puts chaim.username




