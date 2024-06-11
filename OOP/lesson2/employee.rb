class Employee < People
  attr_accessor :birth, :coefficients_salary
  @@allowance = 300

  def initialize(id, name, birth, coefficients_salary)
    super(id, name)
    @birth = birth
    @coefficients_salary = coefficients_salary
  end

  def self.allowance
    @@allowance
  end

  def input
    puts "Enter birth:"
    @birth = gets.chomp.to_i
    puts "Enter coefficients salary:"
    @coefficients_salary = gets.chomp.to_f
  end

  def output
    super
    puts "Birth: #{@birth}"
    puts "Coefficients salary: #{@coefficients_salary}"
  end

  def Payroll
    @coefficients_salary * 1550 + @@allowance
  end

  def >(other)
    @coefficients_salary > other.coefficients_salary
  end

  def to_json(options = {})
    {
      id: @id,
      name: @name,
      birth: @birth,
      coefficients_salary: @coefficients_salary,
      allowance: @@allowance
    }.to_json(options)
  end
end
