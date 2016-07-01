require_relative './employees'

class Department

  def initialize(dept_name)
    @dept_name = dept_name
    @employees = []
  end

  def dept_name
    @dept_name
  end

  def employees
    @employees
  end

  def add_ee_to_dept(name)
    @employees << name
  end

  def total_salary
    total = 0
    @employees.each do |element|
    total += element.salary
  end
    total
  end

end
