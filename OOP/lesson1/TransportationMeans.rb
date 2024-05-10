class TransportationMeans
  attr_accessor :manufacturer, :vehicle_name, :year_of_manufacture, :max_speed

  def initialize(manufacturer, vehicle_name, year_of_manufacture, max_speed)
    @manufacturer = manufacturer
    @vehicle_name = vehicle_name
    @year_of_manufacture = year_of_manufacture
    @max_speed = max_speed
  end

  def input
    puts "Enter manufacturer:"
    @manufacturer = gets.chomp

    puts "Enter vehicle name:"
    @vehicle_name = gets.chomp

    puts "Enter year of manufacture:"
    @year_of_manufacture = gets.chomp.to_i

    puts "Enter max speed:"
    @max_speed = gets.chomp.to_f
  end

  def output
    puts "Manufacturer: #{@manufacturer}"
    puts "Vehicle Name: #{@vehicle_name}"
    puts "Year of Manufacture: #{@year_of_manufacture}"
    puts "Max Speed: #{@max_speed}"
  end

  def to_json(options = {})
  {
    manufacturer: @manufacturer,
    vehicle_name: @vehicle_name,
    year_of_manufacture: @year_of_manufacture,
    max_speed: @max_speed
  }.to_json(options)
  end
end
