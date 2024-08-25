# frozen_string_literal: true

require_relative 'transportation_means'
require_relative 'o_to'
require 'json'
require 'terminal-table'

def data_file_path
  File.join(File.dirname(__FILE__), 'data.json')
end

def save_data(new_data)
  file_path = data_file_path
  # Kiểm tra xem tệp data.json đã tồn tại hay không
  if File.exist?(file_path)
    # Đọc dữ liệu từ tệp data.json
    existing_data = JSON.parse(File.read(file_path))
  else
    # Nếu tệp data.json không tồn tại, sử dụng dữ liệu mới là dữ liệu hiện tại
    existing_data = []
  end

  # Chuyển đổi dữ liệu mới thành hash với ID là key
  new_data_hash = new_data.map(&:to_h).each_with_object({}) do |entry, hash|
    hash[entry["id"]] = entry
  end

  # Tạo một hash để kiểm tra trùng lặp ID từ dữ liệu hiện tại
  existing_data_hash = existing_data.each_with_object({}) do |entry, hash|
    hash[entry["id"]] = entry
  end

  # Kết hợp dữ liệu hiện tại với dữ liệu mới
  combined_data = existing_data_hash.merge(new_data_hash).values

  # Ghi dữ liệu mới vào tệp data.json
  File.open(file_path, 'w') do |file|
    file.puts JSON.pretty_generate(combined_data)
  end
end



def display_data(data)
  rows = data.map(&:values)
  headings = data.first.keys
  table = Terminal::Table.new(headings: headings, rows: rows)
  puts table
end

def display_menu
  menu = Terminal::Table.new do |t|
    t << ['Menu'.ljust(66)]
    t.add_separator
    t.add_row ['1. Enter vehicle information']
    t.add_row ['2. Display vehicle information']
    t.add_row ['3. Enter information for n car objects']
    t.add_row ['4. Display information of n car objects with base speed']
    t.add_row ['5. Sort the list of cars by base speed in descending order']
    t.add_row ['6. Exit']
  end
  puts menu
  print 'Select function: '
end

def main
  vehicle = []

  loop do
    display_menu
    choice = gets.chomp.to_i

    case choice
    when 1
      puts "\n"
      oto = OTo.input

      break  if oto.nil?

      vehicle << oto

      save_data(vehicle)
      puts "\n"
    when 2
      puts "\n"
      data = load_data
      display_data(data)
      puts "\n"
    when 3
      n = nil
      loop do
        print 'Enter the number of cars: '
        n = gets.chomp
        # Kiểm tra n có phải là số nguyên dương không
        break if n.match?(/^\d+$/) && n.to_i.positive?

        puts 'Please enter a positive integer.'
      end
      cars = []
      n.to_i.times do
        cars << input_car_info
      end
      puts "\n"
    when 4
      data = load_data
      # Hiển thị thông tin của n đối tượng OTO cùng với vận tốc cơ sở
      data.each do |oto|
        puts "Manufacturer: #{oto['manufacturer']}, Vehicle name: #{oto['vehicle_name']}, Base speed: #{oto['max_speed']}"
      end
      puts "\n"
    when 5
      data = load_data
      # Sắp xếp danh sách các đối tượng OTO theo thứ tự giảm dần của vận tốc cơ sở
      sorted_data = data.sort_by { |oto| -oto['max_speed'] }
      # Hiển thị danh sách đã sắp xếp
      puts 'Sorted list of cars by base speed in descending order:'
      sorted_data.each do |oto|
        puts "Manufacturer: #{oto['manufacturer']}, Vehicle name: #{oto['vehicle_name']}, Base speed: #{oto['max_speed']}"
      end
      puts "\n"
    when 6
      break
    else
      puts 'Invalid function. Please select again.'
    end
  end
end

main
