# frozen_string_literal: true
require 'tty-prompt'
require 'colorize'
require 'terminal-table'

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
    prompt = TTY::Prompt.new

    # Hiển thị tiêu đề với màu sắc và căn giữa
    title = Terminal::Table.new do |t|
      t.add_row ["Enter vehicle information".colorize(:cyan).center(82)]
    end
    puts title

    # Use the input method from the parent class for common attributes
    vehicle_data = super()

    seat_number = prompt.ask('Seat number:'.colorize(:cyan), convert: :int, required: true) do |q|
      q.validate(/^\d+$/, 'Seat number must be an integer.')
    end

    engine_types = ['Petrol', 'Diesel', 'Electric', 'Hybrid']
    engine_type = prompt.select('Engine type:'.colorize(:cyan), engine_types, required: true)

    # Display the combined information
    table = Terminal::Table.new do |t|
      t.title = "Vehicle Information".colorize(:cyan)
      t.add_row ['Manufacturer:', vehicle_data[:manufacturer].ljust(45).colorize(:yellow)]
      t.add_row ['Vehicle name:', vehicle_data[:vehicle_name].ljust(45).colorize(:yellow)]
      t.add_row ['Year of manufacture:', vehicle_data[:year_of_manufacture].to_s.ljust(45).colorize(:yellow)]
      t.add_row ['Maximum speed:', vehicle_data[:max_speed].to_s.ljust(45).colorize(:yellow)]
      t.add_row ['Seat number:', seat_number.to_s.ljust(45).colorize(:yellow)]
      t.add_row ['Engine type:', engine_type.ljust(45).colorize(:yellow)]
    end
    puts table

    # Return a new OTo object with all the gathered information
    OTo.new(
      manufacturer: vehicle_data[:manufacturer],
      vehicle_name: vehicle_data[:vehicle_name],
      year_of_manufacture: vehicle_data[:year_of_manufacture],
      max_speed: vehicle_data[:max_speed],
      seat_number: seat_number,
      engine_type: engine_type
    )
  end

  def output
    # Gọi phương thức output của lớp cha để hiển thị thông tin cơ bản
    super

    # Tạo bảng với thông tin bổ sung
    table = Terminal::Table.new do |t|
      t.add_row ['Seating Capacity:', @seat_number.to_s.colorize(:yellow)]
      t.add_row ['Engine Type:', @engine_type.colorize(:yellow)]

      # Thêm dòng kẻ phân cách giữa các thông tin
      t.style = { all_separators: true }
    end

    puts table
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
