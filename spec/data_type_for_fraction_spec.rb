require_relative '../data_abstraction/data_type_for_fraction'

RSpec.describe "Fraction operations" do
  describe "input_fraction" do
    it "returns a Fraction object with correct numerator and denominator" do
      allow_any_instance_of(Kernel).to receive(:gets).and_return("3\n", "4\n")
      expect(input_fraction).to have_attributes(numerator: 3, denominator: 4)
    end
  end

  describe "output_fraction" do
    it "prints the fraction in the correct format" do
      fraction = Fraction.new(3, 4)
      expect { output_fraction(fraction) }.to output("3/4\n").to_stdout
    end
  end
end
