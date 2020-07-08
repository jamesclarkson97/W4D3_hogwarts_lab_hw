require_relative "../models/student"
require_relative "../models/house"
require "pry-byebug"

student1 = Student.new({
    "first_name" => "Non",
    "second_name" => "Feasibley",
    "house" => "Gryffindor",
    "age" => "16"
})
student1.save

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

binding.pry
nil
