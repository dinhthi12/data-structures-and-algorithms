require_relative '../../../../config/spec_helper'
require 'json'
require_relative '../../../../src/oop/lesson1/models/o_to'
require_relative '../../../../src/oop/lesson1/models/transportation_means'

RSpec.describe OTo, type: :model do
  # Defines valid attributes for initializing an OTo instance
  let(:valid_attributes) do
    {
      manufacturer: "Toyota",
      vehicle_name: "Camry",
      year_of_manufacture: 2020,
      max_speed: 240,
      seat_number: 5,
      engine_type: "V6"
    }
  end

  # Tests the initialization of an OTo object with valid attributes
  describe '#initialize' do
    it 'creates a new OTo instance with valid attributes' do
      # Initialize OTo with valid attributes and check if seat_number and engine_type are correct
      oto = OTo.new(valid_attributes)
      expect(oto.seat_number).to eq(5)
      expect(oto.engine_type).to eq("V6")
    end

    # Verifies that OTo inherits attributes from the parent class TransportationMeans
    it 'inherits attributes from TransportationMeans' do
      # Check if the inherited attributes from TransportationMeans are correctly assigned
      oto = OTo.new(valid_attributes)
      expect(oto.manufacturer).to eq("Toyota")
      expect(oto.vehicle_name).to eq("Camry")
      expect(oto.year_of_manufacture).to eq(2020)
      expect(oto.max_speed).to eq(240)
    end
  end

  # Tests the #to_h method, which returns a hash representation of the OTo instance
  describe '#to_h' do
    it 'returns a hash representation of the OTo instance' do
      oto = OTo.new(valid_attributes)
      # The expected hash includes the id generated by the instance along with other attributes
      expected_hash = {
        id: oto.id, # Include the generated id in the expected hash
        manufacturer: "Toyota",
        vehicle_name: "Camry",
        year_of_manufacture: 2020,
        max_speed: 240,
        seat_number: 5,
        engine_type: "V6"
      }
      # Ensure that the hash returned by to_h matches the expected hash
      expect(oto.to_h).to eq(expected_hash)
    end
  end

  # Tests the #base_speed method, which calculates the base speed of the vehicle
  describe '#base_speed' do
    it 'calculates the base speed of the vehicle' do
      oto = OTo.new(valid_attributes)
      # Assuming the base speed is 60.0, check if the method returns the correct value
      expect(oto.base_speed).to eq(60.0)
    end
  end

  # Tests the #<=> method, which compares two OTo instances based on their base speed
  describe '#<=>' do
    it 'compares the base speed with another OTo instance' do
      # Create two OTo instances with different max speeds
      oto1 = OTo.new(valid_attributes.merge(max_speed: 240))
      oto2 = OTo.new(valid_attributes.merge(max_speed: 200))

      # Compare base speeds between oto1 and oto2 using the spaceship operator
      expect(oto1 <=> oto2).to eq(1)  # oto1 has higher max_speed, so it should return 1
      expect(oto2 <=> oto1).to eq(-1) # oto2 has lower max_speed, so it should return -1
      expect(oto1 <=> oto1).to eq(0)  # oto1 compared with itself should return 0
    end
  end
end
