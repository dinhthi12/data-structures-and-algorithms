require 'securerandom'
require 'json'
require_relative '../../../../src/oop/lesson1/models/transportation_means'

# RSpec tests for the TransportationMeans class
RSpec.describe TransportationMeans, type: :model do
  # Define valid attributes for a TransportationMeans instance
  let(:valid_attributes) do
    {
      manufacturer: "Toyota",            # Manufacturer of the vehicle
      vehicle_name: "Corolla",            # Vehicle name
      year_of_manufacture: 2018,          # Year the vehicle was manufactured
      max_speed: 180.0                    # Maximum speed of the vehicle
    }
  end

  # Test the initialization of a TransportationMeans instance
  describe '#initialize' do
    it 'creates a new TransportationMeans instance with valid attributes' do
      vehicle = TransportationMeans.new(valid_attributes)

      # Check that the attributes are correctly assigned
      expect(vehicle.manufacturer).to eq("Toyota")
      expect(vehicle.vehicle_name).to eq("Corolla")
      expect(vehicle.year_of_manufacture).to eq(2018)
      expect(vehicle.max_speed).to eq(180.0)
    end

    it 'generates a unique ID if not provided' do
      vehicle = TransportationMeans.new(valid_attributes)

      # Ensure that a unique ID is generated when not provided
      expect(vehicle.id).not_to be_nil
    end

    it 'uses the provided ID if one is given' do
      custom_id = "custom-123"
      vehicle = TransportationMeans.new(valid_attributes.merge(id: custom_id))

      # Ensure the custom ID is correctly assigned when provided
      expect(vehicle.id).to eq(custom_id)
    end
  end

  # Test the generation of a unique UUID
  describe '#generate_unique_id' do
    it 'generates a unique UUID' do
      vehicle = TransportationMeans.new(valid_attributes)

      # Ensure the generated UUID matches the expected pattern for UUIDs
      expect(vehicle.generate_unique_id).to match(/[a-f0-9\-]{36}/)
    end
  end

  # Test the `to_h` method that returns a hash representation of the instance
  describe '#to_h' do
    it 'returns a hash representation of the TransportationMeans instance' do
      vehicle = TransportationMeans.new(valid_attributes)
      expected_hash = {
        id: vehicle.id,                    # The unique ID should be included in the hash
        manufacturer: "Toyota",            # Manufacturer should match the attribute
        vehicle_name: "Corolla",           # Vehicle name should match the attribute
        year_of_manufacture: 2018,         # Year of manufacture should match the attribute
        max_speed: 180.0                   # Maximum speed should match the attribute
      }

      # Ensure the hash returned by `to_h` matches the expected hash
      expect(vehicle.to_h).to eq(expected_hash)
    end
  end
end
