# frozen_string_literal: true

# OTo class represents a type of vehicle with specific attributes such as manufacturer,
# vehicle name, year of manufacture, max speed, seat number, and engine type.
class OTo < TransportationMeans
  attr_accessor :seat_number, :engine_type

  def initialize(params = {})
    super(params)
    @seat_number = params[:seat_number]
    @engine_type = params[:engine_type]
  end

  def self.input
    table = Terminal::Table.new do |t|
      t.add_row ['Enter vehicle information:'.ljust(66)]
    end

    puts table

    print 'Manufacturer:'
    manufacturer = gets.chomp
    print 'Vehicle name:'
    vehicle_name = gets.chomp
    print 'Year of manufacture:'
    year_of_manufacture = gets.chomp.to_i
    print 'Maximum speed:'
    max_speed = gets.chomp.to_f
    print 'Seat number:'
    seat_number = gets.chomp.to_i
    print 'Engine type:'
    engine_type = gets.chomp

    table = Terminal::Table.new do |t|
      t.add_row ['Manufacturer:', manufacturer.ljust(43)]
      t.add_row ['Vehicle name:', vehicle_name.ljust(43)]
      t.add_row ['Year of manufacture:', year_of_manufacture.to_s.ljust(43)]
      t.add_row ['Maximum speed:', max_speed.to_s.ljust(43)]
      t.add_row ['Seat number:', seat_number.to_s.ljust(43)]
      t.add_row ['Engine type:', engine_type.ljust(43)]
    end

    puts table

    OTo.new(
      manufacturer: manufacturer,
      vehicle_name: vehicle_name,
      year_of_manufacture: year_of_manufacture,
      max_speed: max_speed,
      seat_number: seat_number,
      engine_type: engine_type
    )
  end

  def output
    super
    puts "Seating Capacity: #{@seat_number}"
    puts "Engine Type: #{@engine_type}"
  end

  def base_speed
    @max_speed / 4.0
  end

  def <=>(other)
    base_speed <=> other.base_speed
  end

  def to_h
    super.merge(
      seat_number: @seat_number,
      engine_type: @engine_type
    )
  end

  def to_json(options = {})
    super.merge(
      seat_number: @seat_number,
      engine_type: @engine_type
    ).to_json(options)
  end
end
