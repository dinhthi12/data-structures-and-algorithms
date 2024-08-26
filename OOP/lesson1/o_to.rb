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

    # Sử dụng TTY::Prompt để nhập dữ liệu từ người dùng
    manufacturer = prompt.ask('Manufacturer:'.colorize(:cyan), required: true) do |q|
      q.validate(/.+/, 'Manufacturer cannot be empty.')
    end

    vehicle_name = prompt.ask('Vehicle name:'.colorize(:cyan), required: true) do |q|
      q.validate(/.+/, 'Vehicle name cannot be empty.')
    end

    year_of_manufacture = prompt.ask('Year of manufacture:'.colorize(:cyan), convert: :int, required: true) do |q|
      q.validate(/^\d{4}$/, 'Year of manufacture must be a 4-digit number.')
    end

    max_speed = prompt.ask('Maximum speed:'.colorize(:cyan), convert: :float, required: true) do |q|
      q.validate(/^\d+(\.\d+)?$/, 'Maximum speed must be a number.')
    end

    seat_number = prompt.ask('Seat number:'.colorize(:cyan), convert: :int, required: true) do |q|
      q.validate(/^\d+$/, 'Seat number must be an integer.')
    end

    engine_types = ['Petrol', 'Diesel', 'Electric', 'Hybrid']
    engine_type = prompt.select('Engine type:'.colorize(:cyan), engine_types, required: true)

    # Hiển thị thông tin vừa nhập
    table = Terminal::Table.new do |t|
      t.title = "Vehicle information".colorize(:cyan)
      t.add_row ['Manufacturer:', manufacturer.ljust(45).colorize(:yellow)]
      t.add_row ['Vehicle name:', vehicle_name.ljust(45).colorize(:yellow)]
      t.add_row ['Year of manufacture:', year_of_manufacture.to_s.ljust(45).colorize(:yellow)]
      t.add_row ['Maximum speed:', max_speed.to_s.ljust(45).colorize(:yellow)]
      t.add_row ['Seat number:', seat_number.to_s.ljust(45).colorize(:yellow)]
      t.add_row ['Engine type:', engine_type.ljust(45).colorize(:yellow)]
    end
    puts table

    # Tạo và trả về đối tượng OTo với thông tin vừa nhập
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
