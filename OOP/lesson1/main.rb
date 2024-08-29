# frozen_string_literal: true

require_relative './controllers/vehicle_controller'

def main
  controller = VehicleController.new

  loop do
    controller.display_menu
    choice = gets.chomp.to_i

    case choice
    when 1
      begin
        controller.add_vehicle
      rescue => e
        controller.display_error("Failed to add car: #{e.message}")
      end
      break unless controller.continue?
    when 2
    begin
      controller.display_success("Display information successfully! \u{2705}")
    rescue => e
      controller.display_error("Failed to display information: #{e.message}")
    end
    when 3
      begin
      rescue => e
        controller.display_error("Failed to display information: #{e.message}")
      end
      break unless controller.continue?

    when 4
      begin
      rescue => e
        controller.display_error("Failed to display information: #{e.message}")
      end
      break unless controller.continue?
    when 6
      controller.display_success("Exiting...")
      break
    else
      puts 'Invalid function. Please select again.'
    end
  end
end

main
