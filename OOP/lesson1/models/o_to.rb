# frozen_string_literal: true

# OTo class represents a type of vehicle with specific attributes such as manufacturer,
# vehicle name, year of manufacture, max speed, seat number, and engine type.
class OTo < TransportationMeans
  attr_accessor :seat_number, :engine_type

  def initialize(params = {})
    super(params)
    @seat_number = params[:seat_number]
    @engine_type = params[:engine_type]
  end

  def to_h
    super.merge(
      seat_number: @seat_number,
      engine_type: @engine_type
    )
  end

  def to_json(options = {})
    super.merge(
      seat_number: @seat_number,
      engine_type: @engine_type
    ).to_json(options)
  end

  def base_speed
    @max_speed / 4.0
  end

  def <=>(other)
    base_speed <=> other.base_speed
  end
end