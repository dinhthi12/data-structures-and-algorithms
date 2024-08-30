# frozen_string_literal: true

require 'terminal-table'
require 'colorize'

require_relative './../repositories/vehicle_repository'
require_relative './../services/vehicle_service'

# This class is responsible for controlling the flow of vehicle-related operations,
class VehicleController
  def initialize
    file_path = 'data.json'
    repository = VehicleRepository.new(file_path)
    @service = VehicleService.new(repository)
  end

  def display_menu
    menu = build_menu
    puts menu
    print 'Select function: '.colorize(:green)
  end

  def display_error(message)
    puts message.colorize(:red)
  end

  def display_success(message)
    puts message.colorize(:green)
  end

  def continue?
    puts 'Do you want to continue? (Y/N)'
    continue = gets.chomp.upcase
    continue == 'Y'
  end

  def add_vehicle
    vehicle = @service.input # Thu thập thông tin và tạo đối tượng
    @service.add_vehicle(vehicle)
    display_success("Car added successfully! \u{1F697}")
  end

  def display_vehicles
    @service.display_vehicles
    display_success("Display information cars successfully! \u{1F697}")
  end
  private

  def build_menu
    Terminal::Table.new do |t|
      t.title = 'Vehicle Management Menu'.colorize(:cyan)
      t.headings = %w[Option Description]
      t.add_row ['1', 'Enter information for 1 vehicle object']
      t.add_row ['2', 'Display information for vehicle object by ID']
      t.add_row ['3', 'Enter information for n vehicle objects']
      t.add_row ['4', 'Display information for all vehicle objects with base speed']
      t.add_row ['5', 'Sort vehicle list by base speed in descending order']
      t.add_row %w[6 Exit]
    end
  end
end
