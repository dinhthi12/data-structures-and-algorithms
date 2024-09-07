# frozen_string_literal: true

require 'terminal-table'

def display_menu
  Terminal::Table.new do |t|
    t << ['Menu'.ljust(66)]
    t.add_separator
    t.add_row ["1. Enter a person's information"]
    t.add_row ["2. Display person's information"]
    t.add_row ['3. Enter information for multiple employees']
    t.add_row ['4. Display information for all employees']
    t.add_row ['5. Sort the list of employees by salary']
    t.add_row ['6. Exit']
  end
end
