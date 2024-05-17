require_relative 'TransportationMeans'
require_relative 'OTo'
require 'json'
require 'terminal-table'

def data_file_path
  File.join(File.dirname(__FILE__), "data.json")
end

def save_data(new_data)
  file_path = data_file_path
  # Kiểm tra xem tệp data.json đã tồn tại hay không
  if File.exist?(file_path)
    # Đọc dữ liệu từ tệp data.json
    existing_data = JSON.parse(File.read(file_path))

    # Thêm dữ liệu mới vào mảng đã có
    existing_data.concat(new_data)
  else
    # Nếu tệp data.json không tồn tại, sử dụng dữ liệu mới là dữ liệu hiện tại
    existing_data = new_data
  end

  # Ghi dữ liệu mới vào tệp data.json
  File.open(file_path, "w") do |file|
    file.puts JSON.pretty_generate(existing_data)
  end
end

def load_data
  file_path = data_file_path
  # Kiểm tra xem tệp data.json có tồn tại không
  if File.exist?(file_path)
    # Đọc dữ liệu từ tệp data.json và chuyển đổi thành một mảng
    data = JSON.parse(File.read(file_path))
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

def input_transportation_info
  table = Terminal::Table.new do |t|
    t.add_row ["Enter vehicle information:".ljust(66)]
  end

  puts table

  print "Manufacturer:"
  manufacturer = gets.chomp
  print "Vehicle name:"
  vehicle_name = gets.chomp
  print "Year of manufacture:"
  year_of_manufacture = gets.chomp.to_i
  print "Maximum speed:"
  max_speed = gets.chomp.to_f

  table = Terminal::Table.new do |t|
    t.add_row ["Manufacturer:", manufacturer.ljust(43)]
    t.add_row ["Vehicle name:", vehicle_name.ljust(43)]
    t.add_row ["Year of manufacture:", year_of_manufacture.to_s.ljust(43)]
    t.add_row ["Maximum speed:", max_speed.to_s.ljust(43)]
  end

  puts table

  TransportationMeans.new(manufacturer, vehicle_name, year_of_manufacture, max_speed)
end

def display_menu
  menu = Terminal::Table.new do |t|
    t << ["Menu".ljust(66)]
    t.add_separator
    t.add_row ["1. Enter vehicle information"]
    t.add_row ["2. Display vehicle information"]
    t.add_row ["3. Enter information for n car objects"]
    t.add_row ["4. Display information of n car objects with base speed"]
    t.add_row ["5. Sort the list of cars by base speed in descending order"]
    t.add_row ["6. Exit"]
  end
  puts menu
  print "Select function: "
end

def main
  vehicle = []

  loop do

    display_menu
    choice = gets.chomp.to_i

    case choice
    when 1
      puts "\n"
      vehicle << input_transportation_info
      save_data(vehicle)
      puts "\n"
    when 2
      puts "\n"
      data = load_data
      display_data(data)
      puts "\n"
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

main
