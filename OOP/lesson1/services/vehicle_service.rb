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
