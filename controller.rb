require "sinatra"
require "sinatra/contrib/all"

require_relative "models/student"
also_reload "models/*"


# INDEX
get "/hogwarts" do
    @students = Student.all
    erb(:index)
end

# NEW
get "/hogwarts/new" do
    erb(:new)
end

