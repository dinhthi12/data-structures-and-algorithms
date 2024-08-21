require_relative 'People'
require_relative 'Employee'
require 'json'
require 'terminal-table'

def data_file_path
  File.join(File.dirname(__FILE__), "data.json")
end

def save_data(new_data)
  file_path = data_file_path
  if File.exist?(file_path)
    existing_data = JSON.parse(File.read(file_path))

  else
    existing_data = []
  end

  # Chuyển đổi đối tượng Employee thành hash (nếu cần)
  new_data_hash = new_data.map(&:to_h)

  # Kiểm tra và loại bỏ mục trùng lặp
  new_data_hash.each do |new_entry|
    unless existing_data.any? { |existing_entry| existing_entry["id"] == new_entry["id"] }
      existing_data << new_entry
    end
  end

  File.open(file_path, "w") do |file|
    file.puts JSON.pretty_generate(existing_data)
  end
end

def display_menu
  menu = Terminal::Table.new do |t|
    t << ["Menu".ljust(66)]
    t.add_separator
    t.add_row ["1. Enter a person's information"]
    t.add_row ["2. Display person's information"]
    t.add_row ["3. Enter information for multiple employees"]
    t.add_row ["4. Display information for all employees"]
    t.add_row ["5. Sort the list of employees by salary"]
    t.add_row ["6. Exit"]
  end
  puts menu
  print "Select function: "
end

def main
  employees = []

  loop do
    display_menu
    choice = gets.chomp.to_i

    case choice
    when 1
      puts "\n"
      employee = Employee.input

      break if employee.nil?

      # Thêm đối tượng Employee vào mảng
      employees << employee

      # Lưu dữ liệu vào file
      save_data(employees)
      puts "\n"
    when 2
      puts "\n"
      print "Enter employee ID to search: "
      id = gets.chomp.to_i
      employee = Employee.find_by_id(id)
      if employee
        employee.output
        else
          puts "Employee not found."
        end
      puts "\n"
    when 3
      puts "\n"
      puts "Function 3"
      puts "\n"
    when 4
      puts "\n"
      puts "Function 4"
      puts "\n"
    when 5
      puts "\n"
      puts "Function 5"
      puts "\n"
    when 6
      break
    else
      puts "\n"
      puts "Invalid function. Please select again."
      puts "\n"
    end
  end
end

main
