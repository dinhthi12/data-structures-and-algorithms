# frozen_string_literal: true
require 'tty-prompt'
require 'terminal-table'

require_relative './../repositories/vehicle_repository'

class VehicleService
  def initialize(repository)
    @repository = repository
    @prompt = TTY::Prompt.new
  end

  def input
    # Thu thập thông tin cơ bản
    vehicle_data = {
      manufacturer: @prompt.ask('Manufacturer:', required: true),
      vehicle_name: @prompt.ask('Vehicle name:', required: true),
      year_of_manufacture: @prompt.ask('Year of manufacture:', convert: :int, required: true),
      max_speed: @prompt.ask('Maximum speed:', convert: :int, required: true)
    }

    seat_number = @prompt.ask('Seat number:', convert: :int, required: true) do |q|
      q.validate(/^\d+$/, 'Seat number must be an integer.')
    end

    engine_types = %w[Petrol Diesel Electric Hybrid]
    engine_type = @prompt.select('Engine type:', engine_types, required: true)

    # Tạo đối tượng OTo
    OTo.new(
      manufacturer: vehicle_data[:manufacturer],
      vehicle_name: vehicle_data[:vehicle_name],
      year_of_manufacture: vehicle_data[:year_of_manufacture],
      max_speed: vehicle_data[:max_speed],
      seat_number: seat_number,
      engine_type: engine_type
    )
  end

  def add_vehicle(vehicle)
    vehicles = @repository.load_data
    vehicles << vehicle
    @repository.save_data(vehicles)
  end
end
