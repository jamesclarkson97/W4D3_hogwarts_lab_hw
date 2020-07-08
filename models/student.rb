require_relative '../db/sql_runner'

class Student

    attr_reader :id, :first_name, :second_name, :house, :age

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @first_name = options['first_name']
        @second_name = options['second_name']
        @house = options['house']
        @age = options['age'].to_i
    end

    def self.map_items(data)
        data.map { |student| self.new(student) }
    end

    def save()
        sql = "INSERT INTO students
        (first_name, second_name, house, age)
        VALUES ($1, $2, $3, $4)
        RETURNING id"
        values = [@first_name, @second_name, @house, @age]
        result = SqlRunner.run(sql, values).first
        @id = result[:id].to_i
    end

    def self.all
        sql = "SELECT * FROM students"
        result = SqlRunner.run(sql)
        self.map_items(result)
    end
    
end
