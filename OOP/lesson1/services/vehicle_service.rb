# frozen_string_literal: true
require_relative './../repositories/vehicle_repository'
require 'byebug'

class VehicleService
  def initialize(repository)
    @repository = repository
  end

  def add_vehicle(vehicle)
    vehicles = @repository.load_data
    vehicles << vehicle
    @repository.save_data(vehicles)
  end

  def find_by_id(id)
    vehicles = @repository.load_data
    vehicles.find { |vehicle| vehicle[:id] == id }
  end

  def find_by_name(name)
    vehicles = @repository.load_data
    vehicles.select { |vehicle| vehicle[:vehicle_name].downcase.include?(name.downcase) }
  end
end