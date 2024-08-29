# frozen_string_literal: true
require 'json'

require_relative './../models/transportation_means'
require_relative './../models/o_to'

class VehicleRepository
  def initialize(file_path)
    @file_path = File.join(File.dirname(__FILE__), file_path)
  end

  def load_data
    if File.exist?(@file_path)
      JSON.parse(File.read(@file_path), symbolize_names: true)
    else
      []
    end
  end

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
