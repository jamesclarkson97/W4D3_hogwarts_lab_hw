require_relative "../models/student"
require "pry-byebug"

student1 = Student.new({
    "first_name" => "Hairy",
    "second_name" => "Plopper",
    "house" => "Ravenclaw",
    "age" => "17"
})
student1.save

binding.pry
nil
