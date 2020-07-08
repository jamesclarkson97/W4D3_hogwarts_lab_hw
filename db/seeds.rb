require_relative "../models/student"
require_relative "../models/house"
require "pry-byebug"

gryffindor = House.new({
    "name" => "Gryffindor"
})
gryffindor.save

ravenclaw = House.new({
    "name" => "Ravenclaw"
})
ravenclaw.save

hufflepuff = House.new({
    "name" => "Hufflepuff"
})
hufflepuff.save

slytherin = House.new({
    "name" => "Slytherin"
})
slytherin.save

student1 = Student.new({
    "first_name" => "Non",
    "second_name" => "Feasibley",
    "house_id" => gryffindor.id.to_i,
    "age" => "16"
})
student1.save

student2 = Student.new({
    "first_name" => "Hairy",
    "second_name" => "Plopper",
    "house_id" => ravenclaw.id.to_i,
    "age" => "15"
})
student2.save



binding.pry
nil
