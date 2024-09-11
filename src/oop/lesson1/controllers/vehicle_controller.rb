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

  # Asks the user if they want to continue and returns their response.
  # @return [Boolean] Returns true if the user wants to continue, false otherwise.
  def continue?
    print 'Do you want to continue? (Y/N): '
    continue = gets.chomp.upcase
    continue == 'Y'
  end

  # Collects vehicle information from the user, adds the vehicle to the repository, and displays a success message.
  # @return [void]
  def add_vehicle
    vehicle = @service.input
    @service.add_vehicle(vehicle)
  end

  # Displays information about all vehicles in the repository and shows a success message.
  # @return [void]
  def display_vehicles
    @service.display_vehicles
  end

  # Sorts vehicles by their base speed and displays the sorted list with a success message.
  # @return [void]
  def sort_vehicle_by_base_speed
    @service.sort_vehicles_by_base_speed
  end

  # Searches for vehicles based on user input and displays the results.
  # @return [void]
  def search_vehicle
    @service.search_vehicle
  end

  private

  # Builds the menu for vehicle management and formats it using Terminal::Table.
  # @return [Terminal::Table] The formatted menu table.
  def build_menu
    Terminal::Table.new do |t|
      t.title = 'Vehicle Management Menu'.colorize(:cyan)
      t.headings = ['Option', 'Description']
      t.add_row ['1', 'Add a new vehicle']
      t.add_row ['2', 'Sort vehicles by base speed (Ascending/Descending)']
      t.add_row ['3', 'Search for vehicles']
      t.add_row ['4', 'Display all vehicles']
      t.add_row ['6', 'Exit']
    end
  end
end
