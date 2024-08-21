class People

  def initialize(id, name)
    @id = id
    @name = name
  end

  def input
    puts "Enter id:"
    @id = gets.chomp.to_i
    puts "Enter name:"
    @name = gets.chomp
  end

  def output
    puts "id: #{@id}"
    puts "name: #{@name}"
  end

  def to_json(options = {})
    {
      id: @id,
      name: @name
    }.to_json(options)
  end

  # private
  attr_accessor :id, :name
end
