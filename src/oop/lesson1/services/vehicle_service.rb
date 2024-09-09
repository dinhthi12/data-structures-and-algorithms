# frozen_string_literal: true

require 'tty-prompt'
require 'terminal-table'

require_relative './../repositories/vehicle_repository'

# VehicleService is responsible for handling vehicle input and interaction with the repository.
class VehicleService
  # Initializes a new instance of VehicleService with the specified repository.
  # @param repository [VehicleRepository] An instance of VehicleRepository for data persistence.
  def initialize(repository)
    @repository = repository
    @prompt = TTY::Prompt.new
  end

  # Collects vehicle data from user input and creates a new vehicle.
  # @return [OTo] An instance of OTo representing the newly created vehicle.
  def input
    vehicle_data = collect_vehicle_data
    seat_number = collect_seat_number
    engine_type = select_engine_type

    create_vehicle(vehicle_data, seat_number, engine_type)
  end

  # Adds a vehicle to the repository.
  # @param vehicle [OTo] An instance of OTo representing the vehicle to be added.
  # @return [void] This method does not return a value. It saves the updated list of vehicles to the repository.
  def add_vehicle(vehicle)
    vehicles = @repository.load_data
    vehicles << vehicle
    @repository.save_data(vehicles)
  end

  # Displays the list of vehicles in a table format.
  # @return [void] This method does not return a value. It prints the table to the console.
  def display_vehicles
    vehicles = @repository.load_data

    if vehicles.empty?
      puts "No vehicles found."
    else
      headings = ['No.', 'Manufacturer', 'Vehicle Name', 'Year', 'Max Speed', 'Base Speed', 'Seats', 'Engine Type']

      rows = vehicles.each_with_index.map do |vehicle, index|
        o_to = OTo.new(vehicle)

        values = [
          o_to.manufacturer,
          o_to.vehicle_name,
          o_to.year_of_manufacture,
          o_to.max_speed.to_s + ' km/h',
          o_to.base_speed.to_s + ' km/h',
          o_to.seat_number,
          o_to.engine_type
        ]

        [index + 1] + values
      end

      table = Terminal::Table.new(
        headings: headings,
        rows: rows
      )

      puts table
    end
  end

  # Sorts vehicles by their base speed and displays them.
  # @return [void] This method does not return a value. It prints the sorted list of vehicles to the console.
  def sort_vehicles_by_base_speed
    sort_order = @prompt.select('Select sort order:', ['Ascending', 'Descending'])

    vehicles = @repository.load_data
    return puts 'No vehicles found.' if vehicles.empty?

    sorted_vehicles =  vehicles.map { |vehicle| OTo.new(vehicle)}

    sorted_vehicles.sort_by!(&:base_speed)
    sorted_vehicles.reverse! if sort_order == 'Descending'

    display_sorted_vehicles(sorted_vehicles)
  end

  private

  # Displays a table of sorted vehicles.
  # @param sorted_vehicles [Array<OTo>] An array of OTo instances sorted by base speed.
  # @return [void] This method does not return a value. It prints the table to the console.
  def display_sorted_vehicles(sorted_vehicles)
    headings = ['No.', 'Manufacturer', 'Vehicle Name', 'Year', 'Max Speed', 'Base Speed', 'Seats', 'Engine Type']

    rows = sorted_vehicles.each_with_index.map do |vehicle, index|
      values = [
        vehicle.manufacturer,
        vehicle.vehicle_name,
        vehicle.year_of_manufacture,
        vehicle.max_speed.to_s + ' km/h',
        vehicle.base_speed.to_s + ' km/h',
        vehicle.seat_number,
        vehicle.engine_type
      ]

      [index + 1] + values
    end

    table = Terminal::Table.new(
      headings: headings,
      rows: rows
    )

    puts table
  end

  # Collects vehicle data from user input.
  # @return [Hash] A hash containing the collected vehicle data:
  #   - :manufacturer [String] The manufacturer of the vehicle.
  #   - :vehicle_name [String] The name of the vehicle.
  #   - :year_of_manufacture [Integer] The year the vehicle was manufactured.
  #   - :max_speed [Integer] The maximum speed of the vehicle.
  def collect_vehicle_data
    {
      manufacturer: @prompt.ask('Manufacturer:', required: true),
      vehicle_name: @prompt.ask('Vehicle name:', required: true),
      year_of_manufacture: @prompt.ask('Year of manufacture:', convert: :int, required: true),
      max_speed: @prompt.ask('Maximum speed:', convert: :int, required: true)
    }
  end

  # Collects the seat number from user input.
  # @return [Integer] The seat number of the vehicle.
  def collect_seat_number
    @prompt.ask('Seat number:', convert: :int, required: true) do |q|
      q.validate(/^\d+$/, 'Seat number must be an integer.')
    end
  end

  # Selects the engine type from a list of options.
  # @return [String] The selected engine type.
  def select_engine_type
    engine_types = %w[Petrol Diesel Electric Hybrid]
    @prompt.select('Engine type:', engine_types, required: true)
  end

  # Creates a new vehicle based on the provided data.
  # @param vehicle_data [Hash] A hash containing the vehicle data.
  # @param seat_number [Integer] The number of seats in the vehicle.
  # @param engine_type [String] The type of engine in the vehicle.
  # @return [OTo] An instance of OTo representing the newly created vehicle.
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
