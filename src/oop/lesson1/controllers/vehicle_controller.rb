# frozen_string_literal: true

require 'terminal-table'
require 'colorize'

require_relative './../repositories/vehicle_repository'
require_relative './../services/vehicle_service'

# This class is responsible for controlling the flow of vehicle-related operations.
class VehicleController
  # Initializes a new instance of VehicleController with a VehicleService.
  # @return [void]
  def initialize
    file_path = 'data.json'
    repository = VehicleRepository.new(file_path)
    @service = VehicleService.new(repository)
  end

  # Displays the main menu to the user.
  # @return [void]
  def display_menu
    menu = build_menu
    puts menu
    print 'Select function: '.colorize(:green)
  end

  # Displays an error message to the user.
  # @param message [String] The error message to display.
  # @return [void]
  def display_error(message)
    puts message.colorize(:red)
  end

  # Displays a success message to the user.
  # @param message [String] The success message to display.
  # @return [void]
  def display_success(message)
    puts message.colorize(:green)
  end

  # Asks the user if they want to continue and returns their response.
  # @return [Boolean] Returns true if the user wants to continue, false otherwise.
  def continue?
    puts 'Do you want to continue? (Y/N)'
    continue = gets.chomp.upcase
    continue == 'Y'
  end

  # Collects vehicle information from the user, adds the vehicle to the repository,
  # and displays a success message.
  def add_vehicle
    vehicle = @service.input
    @service.add_vehicle(vehicle)
    display_success("Car added successfully! \u{1F697}")
  end

  # Displays information about all vehicles in the repository and shows a success message.
  # @return [void]
  def display_vehicles
    @service.display_vehicles
    display_success("Display information cars successfully! \u{1F697}")
  end

  # Sorts vehicles by their base speed and displays the sorted list with a success message.
  # @return [void]
  def sort_vehicle_by_base_speed
    @service.sort_vehicles_by_base_speed
    display_success("Sort list information cars successfully! \u{1F697}")
  end
  private

  # Builds the menu for vehicle management and formats it using Terminal::Table.
  # @return [Terminal::Table] The formatted menu table.
  def build_menu
    Terminal::Table.new do |t|
      t.title = 'Vehicle Management Menu'.colorize(:cyan)
      t.headings = %w[Option Description]
      t.add_row ['1', 'Enter information for 1 vehicle object']
      t.add_row ['2', 'Sort vehicles by base speed (Ascending/Descending)']
      t.add_row ['3', 'Enter information for n vehicle objects']
      t.add_row ['4', 'Display information for all vehicle objects with base speed']
      t.add_row ['5', 'Sort vehicle list by base speed in descending order']
      t.add_row %w[6 Exit]
    end
  end
end
