class Employee
  attr_reader :name, :email
  def initialize(name,email)
    @name = name
    @email = email
  end
end

class HourlyEmployee < Employee
  attr_reader :name
  def initialize(name, email, hourly_rate, hours_worked)
    @name = name
    @email = email
    @hourly_rate = hourly_rate
    @hours_worked = hours_worked
  end

  def calculate_salary
    @hours_worked * @hourly_rate
  end
end

class SalariedEmployee < Employee
  attr_reader :name
  def initialize(name, email, hourly_rate)
    @name = name
    @email = email
    @hourly_rate = hourly_rate
  end
  def calculate_salary
    @hourly_rate
  end
end

class MultiPaymentEmployee
  attr_reader :name, :email
  def initialize(name, email, yearly_salary, hourly_rate, hours_worked)
    @name = name
    @email = email
    @yearly_salary = yearly_salary
    @hourly_rate = hourly_rate
    @hours_worked = hours_worked
  end

  def calculate_salary
    @hours_worked * @hours_worked
  end
end

class Payroll
  def initialize(employees)
    @employees = employees
  end
  def pay_employees
    total_amount_per_week = @employees.reduce(0) do |sum, employee|
      puts "#{employee.name} => #{employee.calculate_salary}"
      notify_employee(employee)
      sum += employee.calculate_salary
    end
  	  puts "The total amount of payroll of the week is #{total_amount_per_week}"
  end
  def notify_employee(employee)
    puts "Sending notify email paid salary to: #{employee.email}"
  end
end

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
vinicio = MultiPaymentEmployee.new('Vinicio', 'email@gmail.com', 17000, 10, 40)


employees = [josh, nizar, ted, vinicio]
payroll = Payroll.new(employees)
puts payroll.pay_employees()
