require_relative './controllers/vehicle_controller'
require_relative './models/transportation_means'
require_relative './models/o_to'
require_relative './services/vehicle_service'

def main
  controller = VehicleController.new
  file_path = 'data.json'
  repository = VehicleRepository.new(file_path)
  service = VehicleService.new(repository)
  loop do
    controller.display_menu
    choice = gets.chomp.to_i

    case choice
    when 1
      begin
        # Ví dụ thêm phương tiện
        vehicle = OTo.new({
                            manufacturer: "Toyota",
                            vehicle_name: "Camry",
                            year_of_manufacture: 2020,
                            max_speed: 200,
                            seat_number: 5,
                            engine_type: "Hybrid"
                          })
        service.add_vehicle(vehicle)

        # Ví dụ tìm kiếm phương tiện
        found_vehicle = service.find_by_id(vehicle.id)
        puts found_vehicle.inspect if found_vehicle
        controller.display_success("Car added successfully! \u{1F697}")
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
        print 'Enter vehicle ID: '
        id = gets.chomp
        controller.display_vehicle_by_id(id)
      rescue => e
        controller.display_error("Failed to display information: #{e.message}")
      end
      break unless controller.continue?

    when 4
      begin
        print 'Enter vehicle name: '
        name = gets.chomp
        controller.display_vehicle_by_name(name)
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