class OTo < TransportationMeans
  attr_accessor :seat_number, :engine_type

  def initialize(manufacturer, vehicle_name, year_of_manufacture, max_speed, seat_number, engine_type)
    super(manufacturer, vehicle_name, year_of_manufacture, max_speed)
    @seat_number = seat_number
    @engine_type = engine_type
  end

  def input
    puts "Enter seating capacity:"
    @seat_number = gets.chomp.to_i

    puts "Enter engine type:"
    @engine_type = gets.chomp
  end

  def output
    puts "Seating Capacity: #{@seat_number}"
    puts "Engine Type: #{@engine_type}"
  end

  def base_speed
    @max_speed / 4.0
  end

  def <=>(other)
    base_speed <=> other.base_speed
  end
end
