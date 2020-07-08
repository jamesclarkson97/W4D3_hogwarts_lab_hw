require_relative "../models/student"

student1 = Student.new({
    "first_name" => "Hairy",
    "second_name" => "Plopper",
    "house" => "Ravenclaw",
    "age" => "17"
})
student1.save
