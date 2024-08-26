# frozen_string_literal: true
require 'securerandom'
require 'tty-prompt'
require 'colorize'
require 'terminal-table'

# Transportation means class serves as a base class for different types of transportation
# vehicles, holding common attributes like manufacturer, vehicle name, year of manufacture, and max speed.
class TransportationMeans
  attr_accessor :id, :manufacturer, :vehicle_name, :year_of_manufacture, :max_speed

  def initialize(params = {})
    @id = params[:id] || generate_unique_id
    @manufacturer = params[:manufacturer]
    @vehicle_name = params[:vehicle_name]
    @year_of_manufacture = params[:year_of_manufacture]
    @max_speed = params[:max_speed]
  end

  def generate_unique_id
    SecureRandom.uuid
  end

  def self.input
    prompt = TTY::Prompt.new

    # Sử dụng TTY::Prompt để nhập dữ liệu từ người dùng
    manufacturer = prompt.ask('Manufacturer:'.colorize(:cyan), required: true) do |q|
      q.validate(/.+/, 'Manufacturer cannot be empty.')
    end

    vehicle_name = prompt.ask('Vehicle name:'.colorize(:cyan), required: true) do |q|
      q.validate(/.+/, 'Vehicle name cannot be empty.')
    end

    year_of_manufacture = prompt.ask('Year of manufacture:'.colorize(:cyan), convert: :int, required: true) do |q|
      q.validate(/^\d{4}$/, 'Year of manufacture must be a 4-digit number.')
    end

    max_speed = prompt.ask('Maximum speed:'.colorize(:cyan), convert: :float, required: true) do |q|
      q.validate(/^\d+(\.\d+)?$/, 'Maximum speed must be a number.')
    end

    {
      manufacturer: manufacturer,
      vehicle_name: vehicle_name,
      year_of_manufacture: year_of_manufacture,
      max_speed: max_speed
    }
  end

  def output
    # Tạo bảng với tiêu đề là các trường thông tin
    table = Terminal::Table.new do |t|
      t.title = "Vehicle Information".colorize(:cyan)

      # Thêm hàng thông tin vào bảng
      t.add_row ['Manufacturer:', @manufacturer.colorize(:yellow)]
      t.add_row ['Vehicle name:', @vehicle_name.colorize(:yellow)]
      t.add_row ['Year of manufacture:', @year_of_manufacture.to_s.colorize(:yellow)]
      t.add_row ['Max speed:', @max_speed.to_s.colorize(:yellow)]

      # Thêm dòng kẻ phân cách giữa các thông tin
      t.style = { all_separators: true }
    end

    puts table
  end

  def to_h
    {
      id: @id,
      manufacturer: @manufacturer,
      vehicle_name: @vehicle_name,
      year_of_manufacture: @year_of_manufacture,
      max_speed: @max_speed
    }
  end

  def to_json(options = {})
    {
      id: @id,
      manufacturer: @manufacturer,
      vehicle_name: @vehicle_name,
      year_of_manufacture: @year_of_manufacture,
      max_speed: @max_speed
    }.to_json(options)
  end
end
