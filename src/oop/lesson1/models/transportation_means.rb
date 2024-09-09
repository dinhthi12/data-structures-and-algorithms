# frozen_string_literal: true

require 'securerandom'

# Transportation means class serves as a base class for different types of transportation
# vehicles, holding common attributes like manufacturer, vehicle name, year of manufacture, and max speed.
class TransportationMeans
  attr_accessor :id, :manufacturer, :vehicle_name, :year_of_manufacture, :max_speed

  # Initializes a new instance of the TransportationMeans class.
  # @param params [Hash] A hash containing the attributes for the TransportationMeans instance.
  #   - :id [String, nil] Optional unique identifier. If not provided, a new UUID will be generated.
  #   - :manufacturer [String] The manufacturer of the vehicle.
  #   - :vehicle_name [String] The name of the vehicle.
  #   - :year_of_manufacture [Integer] The year the vehicle was manufactured.
  #   - :max_speed [Float] The maximum speed of the vehicle.
  def initialize(params = {})
    @id = params[:id] || generate_unique_id
    @manufacturer = params[:manufacturer]
    @vehicle_name = params[:vehicle_name]
    @year_of_manufacture = params[:year_of_manufacture]
    @max_speed = params[:max_speed]
  end

  # Generates a unique identifier for the vehicle.
  # @return [String] A UUID representing a unique identifier.
  def generate_unique_id
    SecureRandom.uuid
  end

  # Returns a hash representation of the TransportationMeans instance.
  # @return [Hash] A hash containing the attributes of the TransportationMeans instance:
  #   - :id [String] The unique identifier of the vehicle.
  #   - :manufacturer [String] The manufacturer of the vehicle.
  #   - :vehicle_name [String] The name of the vehicle.
  #   - :year_of_manufacture [Integer] The year the vehicle was manufactured.
  #   - :max_speed [Float] The maximum speed of the vehicle.
  def to_h
    {
      id: @id,
      manufacturer: @manufacturer,
      vehicle_name: @vehicle_name,
      year_of_manufacture: @year_of_manufacture,
      max_speed: @max_speed
    }
  end

  # Returns a JSON representation of the TransportationMeans instance.
  # @param options [Hash] Options to customize the JSON output.
  # @return [String] A JSON string representing the TransportationMeans instance.
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
