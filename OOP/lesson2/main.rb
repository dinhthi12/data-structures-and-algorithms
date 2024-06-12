require 'json'
require 'terminal-table'

def data_file_path
  File.join(File.dirname(__FILE__), "data.json")
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
  loop do
    display_menu
    choice = gets.chomp.to_i

    case choice
    when 1
      puts "\n"
      puts "Function 1"
      puts "\n"
    when 2
      puts "\n"
      puts "Function 2"
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
