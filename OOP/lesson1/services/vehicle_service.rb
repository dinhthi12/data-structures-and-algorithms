# frozen_string_literal: true

require 'tty-prompt'
require 'terminal-table'

require_relative './../repositories/vehicle_repository'

# VehicleService is responsible for handling vehicle input and interaction with the repository.
class VehicleService
  def initialize(repository)
    @repository = repository
    @prompt = TTY::Prompt.new
  end

  def input
    vehicle_data = collect_vehicle_data
    seat_number = collect_seat_number
    engine_type = select_engine_type

    create_vehicle(vehicle_data, seat_number, engine_type)
  end

  def add_vehicle(vehicle)
    vehicles = @repository.load_data
    vehicles << vehicle
    @repository.save_data(vehicles)
  end

  def display_vehicles
    vehicles = @repository.load_data

    if vehicles.empty?
      puts "No vehicles found."
    else
      headings = ['No.', 'Manufacturer', 'Vehicle Name', 'Year', 'Max Speed', 'Base Speed', 'Seats', 'Engine Type']

      rows = vehicles.each_with_index.map do |vehicle, index|
        # Tạo đối tượng OTo từ dữ liệu JSON
        o_to = OTo.new(vehicle)

        # Lấy các giá trị cần thiết và tính toán base_speed
        values = [
          o_to.manufacturer,
          o_to.vehicle_name,
          o_to.year_of_manufacture,
          o_to.max_speed.to_s + ' km/h', # Thêm "km/h" vào giá trị của Max Speed
          o_to.base_speed.to_s + ' km/h', # Tính toán và thêm "km/h" vào giá trị của Base Speed
          o_to.seat_number,
          o_to.engine_type
        ]

        [index + 1] + values # Thêm cột No. tự động tăng và thêm các giá trị của các cột
      end

      table = Terminal::Table.new(
        headings: headings,
        rows: rows
      )

      puts table
    end
  end


  private

  def collect_vehicle_data
    {
      manufacturer: @prompt.ask('Manufacturer:', required: true),
      vehicle_name: @prompt.ask('Vehicle name:', required: true),
      year_of_manufacture: @prompt.ask('Year of manufacture:', convert: :int, required: true),
      max_speed: @prompt.ask('Maximum speed:', convert: :int, required: true)
    }
  end

  def collect_seat_number
    @prompt.ask('Seat number:', convert: :int, required: true) do |q|
      q.validate(/^\d+$/, 'Seat number must be an integer.')
    end
  end

  def select_engine_type
    engine_types = %w[Petrol Diesel Electric Hybrid]
    @prompt.select('Engine type:', engine_types, required: true)
  end

  def create_vehicle(vehicle_data, seat_number, engine_type)
    OTo.new(
      manufacturer: vehicle_data[:manufacturer],
      vehicle_name: vehicle_data[:vehicle_name],
      year_of_manufacture: vehicle_data[:year_of_manufacture],
      max_speed: vehicle_data[:max_speed],
      seat_number: seat_number,
      engine_type: engine_type
    )
  end
end
