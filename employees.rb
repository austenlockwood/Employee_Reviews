class Employee

  def initialize(name, email, phone_number, salary)
    @name = name
    @email = email
    @phone_number = phone_number
    @salary = salary
  end

  def name
    @name
  end

  def email
    @email
  end

  def phone_number
    @phone_number
  end

  def salary
    @salary
  end

end

martha = Employee.new("Martha Hansen", "martha@dunderaccounting.com", 2022022202, 32000)
janice = Employee.new("Janice Smith", "janice@dunderaccounting.com", 4152025678, 48000)

total_salary = martha.salary + janice.salary

# martha.total_salary
