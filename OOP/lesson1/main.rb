require_relative 'TransportationMeans'
require_relative 'OTo'
require 'json'
require 'terminal-table'

def save_data(new_data)
  # Kiểm tra xem tệp data.json đã tồn tại hay không
  if File.exist?("data.json")
    # Đọc dữ liệu từ tệp data.json
    existing_data = JSON.parse(File.read("data.json"))

    # Thêm dữ liệu mới vào mảng đã có
    existing_data.concat(new_data)
  else
    # Nếu tệp data.json không tồn tại, sử dụng dữ liệu mới là dữ liệu hiện tại
    existing_data = new_data
  end

  # Ghi dữ liệu mới vào tệp data.json
  File.open("data.json", "w") do |file|
    file.puts JSON.pretty_generate(existing_data)
  end
end

def load_data
  # Kiểm tra xem tệp data.json có tồn tại không
  if File.exist?("data.json")
    # Đọc dữ liệu từ tệp data.json và chuyển đổi thành một mảng
    data = JSON.parse(File.read("data.json"))
    return data
  else
    # Trả về mảng rỗng nếu tệp không tồn tại
    return []
  end
end

def display_data(data)
  rows = data.map(&:values)
  headings = data.first.keys
  table = Terminal::Table.new(headings: headings, rows: rows)
  puts table
end

def main
  vehicle = []

  loop do
    puts "\nMenu:"
    puts "1. Enter vehicle information"
    puts "2. Display vehicle information"
    puts "3. Enter information for n car objects"
    puts "4. Display information of n car objects with base speed"
    puts "5. Sort the list of cars by base speed in descending order"
    puts "6. Exit"
    print "Select function: "
    choice = gets.chomp.to_i

    case choice
    when 1
      puts "\n"
      vehicle << input_transportation_info
      save_data(vehicle)
    when 2
      puts "\n"
      data = load_data
      display_data(data)
    when 3
      puts "3"
    when 4
      puts "4"
    when 5
      puts "5"
    when 6
      puts "6"
      break
    else
      puts "Invalid function. Please select again."
    end
  end
end

def input_transportation_info
  width = 40
  horizontal_line = "-" * width
  puts "+" + horizontal_line + "+"

  puts "Enter vehicle information:"
  print "Manufacturer: "
  manufacturer = gets.chomp
  print "Vehicle name: "
  vehicle_name = gets.chomp
  print "Year of manufacture: "
  year_of_manufacture = gets.chomp.to_i
  print "Maximum speed: "
  max_speed = gets.chomp.to_f

  puts "+" + horizontal_line + "+"

  TransportationMeans.new(manufacturer, vehicle_name, year_of_manufacture, max_speed)
end

# def display_transportation_info
#   width = 40
#   horizontal_line = "-" * width
#   puts "+" + horizontal_line + "+"

#   puts "Information of transportation:"
#   vehicle = load_data

#   vehicle.each do |v|
#     puts "Manufacturer: #{v['manufacturer']}"
#     puts "Vehicle Name: #{v['vehicle_name']}"
#     puts "Year of Manufacture: #{v['year_of_manufacture']}"
#     puts "Max Speed: #{v['max_speed']}"
#     puts "+" + horizontal_line + "+"
#   end
#end

main
# irb => load OOP/lesson[number]/main.rb
