class Faction
  attr_accessor :numrator, :denominator

  def initialize(numrator, denominator)
    @numrator = numrator
    @denominator = denominator
  end
end

def input_fraction
  print "Input Fraction: "
  numrator = gets.chomp.to_i

  denominator = nil
  loop do
    print "Input denominator: "
    break if denominator != 0
    puts "Input Fraction different 0. check again please!"
  end

  Faction.new(numrator, denominator)
end

def output_fraction(fraction)
  puts "#{fraction.numrator}/#{fraction.denominator}"
end
