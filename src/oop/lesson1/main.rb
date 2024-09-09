# frozen_string_literal: true

require_relative '../../oop/lesson1/controllers/vehicle_controller'

# Main entry point of the application.
# Creates a new VehicleController instance and handles user interactions in a loop.
def main
  controller = VehicleController.new

  loop do
    controller.display_menu
    choice = gets.chomp.to_i

    handle_choice(controller, choice)

    break unless controller.continue?
  end
end

# Handles user choices and invokes appropriate methods on the controller.
# @param controller [VehicleController] The controller instance to handle requests.
# @param choice [Integer] The user's choice from the menu.
def handle_choice(controller, choice)
  case choice
  when 1
    safely_execute(controller, :add_vehicle, 'Failed to add car')
  when 2
    safely_execute(controller, :sort_vehicle_by_base_speed, 'Failed to sort list information car')
  when 4
    safely_execute(controller, :display_vehicles, 'Failed to display information car')
  when 6
    controller.display_success('Exiting...')
  else
    puts 'Invalid function. Please select again.'
  end
end

# Safely executes a method on the controller and handles any errors.
# @param controller [VehicleController] The controller instance to handle requests.
# @param method_name [Symbol] The method name to be invoked on the controller.
# @param error_message [String] The error message to be displayed if an exception occurs.
# @yield If a block is given, it will be executed before calling the method.
def safely_execute(controller, method_name, error_message)
  yield if block_given?
  controller.send(method_name)
rescue StandardError => e
  controller.display_error("#{error_message}: #{e.message}")
end

main
