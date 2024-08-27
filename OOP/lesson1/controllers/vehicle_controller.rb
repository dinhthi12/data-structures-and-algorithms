require 'terminal-table'
require 'byebug'
require 'tty-prompt'
require 'colorize'

require_relative './../repositories/vehicle_repository'
require_relative './../services/vehicle_service'

class VehicleController
  def initialize
    file_path = 'data.json'
    repository = VehicleRepository.new(file_path)
    @service = VehicleService.new(repository)
  end
  def display_menu
      menu = Terminal::Table.new do |t|
        t.title = 'Vehicle Management Menu'.colorize(:cyan)
        t.headings = %w[Option Description]
        t.add_row ['1', 'Enter information for 1 vehicle object']
        t.add_row ['2', 'Display information for vehicle object by ID']
        t.add_row ['3', 'Enter information for n vehicle objects']
        t.add_row ['4', 'Display information for all vehicle objects with base speed']
        t.add_row ['5', 'Sort vehicle list by base speed in descending order']
        t.add_row %w[6 Exit]
      end
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
    puts "Do you want to continue? (Y/N)"
    continue = gets.chomp.upcase
    continue == "Y"
  end

  def display_vehicle_by_id(id)
    vehicle = @service.find_by_id(id)
    if vehicle
      puts "Vehicle found: #{vehicle}"
    else
      display_error("No vehicle found with ID: #{id}")
    end
  end

  def display_vehicle_by_name(name)
    vehicles = @service.find_by_name(name)
    if vehicles.any?
      vehicles.each do |vehicle|
        puts "Vehicle found: #{vehicle}"
      end
    else
      display_error("No vehicle found with name: #{name}")
    end
  end
end