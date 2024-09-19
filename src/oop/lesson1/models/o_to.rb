# frozen_string_literal: true

# OTo class represents a type of vehicle with specific attributes such as manufacturer,
# vehicle name, year of manufacture, max speed, seat number, and engine type.

require_relative 'transportation_means'

class OTo < TransportationMeans
  attr_accessor :seat_number, :engine_type

  # Initializes a new instance of the OTo class.
  # @param params [Hash] A hash containing the attributes for the OTo instance.
  #   - :seat_number [Integer] The number of seats in the vehicle.
  #   - :engine_type [String] The type of engine used in the vehicle.
  #   - Other parameters are passed to the superclass constructor.
  def initialize(params = {})
    super(params)
    @seat_number = params[:seat_number]
    @engine_type = params[:engine_type]
  end

  # Returns a hash representation of the OTo instance, including all attributes.
  # @return [Hash] A hash containing the attributes of the OTo instance:
  #   - :seat_number [Integer] The number of seats in the vehicle.
  #   - :engine_type [String] The type of engine used in the vehicle.
  def to_h
    super.merge(
      seat_number: @seat_number,
      engine_type: @engine_type
    )
  end

  # Returns a JSON representation of the OTo instance.
  # @param options [Hash] Options to customize the JSON output.
  # @return [String] A JSON string representing the OTo instance.
  def to_json(options = {})
    super.merge(
      seat_number: @seat_number,
      engine_type: @engine_type
    ).to_json(options)
  end

  # Calculates the base speed of the vehicle.
  # @return [Float] The base speed of the vehicle, calculated as max_speed divided by 4.0.
  def base_speed
    @max_speed / 4.0
  end

  # Compares the base speed of the current instance with another OTo instance.
  # @param other [OTo] The other OTo instance to compare against.
  # @return [Integer] -1 if the base speed of the current instance is less than the other instance's base speed,
  #   0 if they are equal, and 1 if it is greater.
  def <=>(other)
    base_speed <=> other.base_speed
  end
end
