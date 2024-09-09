# frozen_string_literal: true

require 'json'

require_relative './../models/transportation_means'
require_relative './../models/o_to'

# VehicleRepository is responsible for loading and saving vehicle data to a file.
# It handles the persistence of vehicle information in JSON format.
class VehicleRepository
  # Initializes a new instance of VehicleRepository with the specified file path.
  # @param file_path [String] The path to the file where vehicle data is stored.
  def initialize(file_path)
    @file_path = File.join(File.dirname(__FILE__), file_path)
  end

  # Loads vehicle data from the file.
  # @return [Array<Hash>] An array of hashes representing vehicle data. Each hash contains the attributes of a vehicle.
  #   Returns an empty array if the file does not exist.
  def load_data
    if File.exist?(@file_path)
      JSON.parse(File.read(@file_path), symbolize_names: true)
    else
      []
    end
  end

  # Saves new vehicle data to the file, merging it with existing data.
  # @param new_data [Array<TransportationMeans>] An array of TransportationMeans instances to be saved.
  #   Each instance is converted to a hash representation using the #to_h method.
  # @return [void] This method does not return a value. It writes the combined data to the file.
  def save_data(new_data)
    existing_data = load_data

    new_data_hash = new_data.map(&:to_h).each_with_object({}) do |entry, hash|
      hash[entry[:id]] = entry
    end

    existing_data_hash = existing_data.each_with_object({}) do |entry, hash|
      hash[entry[:id]] = entry
    end

    combined_data = existing_data_hash.merge(new_data_hash).values

    File.open(@file_path, 'w') do |file|
      file.puts JSON.pretty_generate(combined_data)
    end
  end
end
