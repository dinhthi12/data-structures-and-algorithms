# frozen_string_literal: true

require 'securerandom'

# Transportation means class serves as a base class for different types of transportation
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
