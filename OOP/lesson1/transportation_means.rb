# frozen_string_literal: true
require 'securerandom'

# TransportationMeans class serves as a base class for different types of transportation
# vehicles, holding common attributes like manufacturer, vehicle name, year of manufacture, and max speed.
class TransportationMeans
  attr_accessor :id, :manufacturer, :vehicle_name, :year_of_manufacture, :max_speed

  def initialize(params = {})
    @id = params[:id] || generate_unique_id
    @manufacturer = params[:manufacturer]
    @vehicle_name = params[:vehicle_name]
    @year_of_manufacture = params[:year_of_manufacture]
    @max_speed = params[:max_speed]
  end

  def generate_unique_id
    SecureRandom.uuid
  end

  def input
    puts 'Enter manufacturer:'
    @manufacturer = gets.chomp

    puts 'Enter vehicle name:'
    @vehicle_name = gets.chomp

    puts 'Enter year of manufacture:'
    @year_of_manufacture = gets.chomp.to_i

    puts 'Enter max speed:'
    @max_speed = gets.chomp.to_f
  end

  def output
    puts "Manufacturer: #{@manufacturer}"
    puts "Vehicle name: #{@vehicle_name}"
    puts "Year of manufacture: #{@year_of_manufacture}"
    puts "Max speed: #{@max_speed}"
  end

  def to_h
    {
      id: @id,
      manufacturer: @manufacturer,
      vehicle_name: @vehicle_name,
      year_of_manufacture: @year_of_manufacture,
      max_speed: @max_speed
    }
  end

  def to_json(options = {})
    {
      id: @id,
      manufacturer: @manufacturer,
      vehicle_name: @vehicle_name,
      year_of_manufacture: @year_of_manufacture,
      max_speed: @max_speed
    }.to_json(options)
  end
end
