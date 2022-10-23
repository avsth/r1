
class Employee

  attr_reader :name, :salary

  def name=(name)
    if name == ""
      raise "Name can't be blank1"
    else
      @name = name
    end
  end

  def initialize(name = "Anon")
    self.name = name
  end

  def print_name
    puts "Name : #{name}"
  end

end

class Salaried_Employee < Employee
  attr_reader :salary

  def salary= (salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    else
      @salary = salary
    end
  end

  def initialize(name = "Anon", salary = 0.0)
    super(name)
    self.salary = salary
  end

  def print_pay_stub
    print_name
    pay_for_period = (@salary / 365.0) * 14
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay this period: $#{formatted_pay}"
  end

end

class HourlyEmployee < Employee
  def self.sec_quard(name)
    HourlyEmployee.new(name, 19.25, 30)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end

  attr_reader :hourly_wage, :hours_per_week

  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      raise "An hourly wage of #{hourly_wage} isn't valid!"
    end
    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "#{hours_per_week} hours per week isn't valid!"
    end
    @hours_per_week = hours_per_week
  end

  def initialize(name="Anon", hourly_wage = 0.0, hours_per_week = 0.0)
    super(name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  def print_pay_stub
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end

end

masha = Salaried_Employee.new("Masha_V", 123.0)
masha.print_pay_stub

vadim = HourlyEmployee.sec_quard("Vadim_X")
vadim.print_pay_stub

alik = HourlyEmployee.new("Alik_M", 590.0, 12)
alik.print_pay_stub