# frozen_string_literal: true
require_relative './../repositories/vehicle_repository'
require 'byebug'
require 'tty-prompt'
require 'terminal-table'

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

    engine_types = ['Petrol', 'Diesel', 'Electric', 'Hybrid']
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

  def find_by_id(id)
    vehicles = @repository.load_data
    vehicles.find { |vehicle| vehicle[:id] == id }
  end

  def find_by_name(name)
    vehicles = @repository.load_data
    vehicles.select { |vehicle| vehicle[:vehicle_name].downcase.include?(name.downcase) }
  end
end