require_relative '../db/sql_runner'

class House

    attr_reader :id, :name

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @name = options['name']
    end

    def save()
        sql = "INSERT INTO houses
        (name)
        VALUES ($1)
        RETURNING id"
        values = [@name]
        result = SqlRunner.run(sql, values).first
        @id = result['id'].to_i
    end

    def self.all
        sql = "SELECT * FROM houses"
        result = SqlRunner.run(sql)
        self.map_items(result)
    end

    def self.find(id)
        sql = "SELECT * FROM houses WHERE id = $1"
        values = [id]
        result = SqlRunner.run(sql, values).first
        self.new(result)
    end

    def self.map_items(data)
        data.map { |house| self.new(house) }
    end
end