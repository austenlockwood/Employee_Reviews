require_relative './departments'

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


class AssignToDept

  def initialize(name, dept_name)
    @name = name
    @dept_name = dept_name
  end

  def name
    @name
  end

  def dept_name
    @dept_name
  end

end
