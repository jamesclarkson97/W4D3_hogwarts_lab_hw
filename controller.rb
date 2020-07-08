require "sinatra"
require "sinatra/contrib/all"

require_relative "models/student"
require_relative "models/house"
also_reload "models/*"


# INDEX
get "/hogwarts" do
    @students = Student.all
    erb(:index)
end

# NEW
get "/hogwarts/new" do
    @houses = House.all
    erb(:new)
end

# CREATE
post "/hogwarts" do
    @student = Student.new(params)
    @student.save
    erb(:create)
end
