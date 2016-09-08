require_relative './employees'

class Department

attr_accessor :dept_name

  def initialize(dept_name)
    @dept_name = dept_name
    @employees = []
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

  def give_all_satisfactory_ees_raise(amount)
    @dept_raise = amount.to_i

    good_ees = []

    @employees.each do |ee|
      if ee.satisfactory == :true_value
        good_ees << ee
      end
    end

    good_ees.each do |ee|
      ee.salary += (@dept_raise/good_ees.length)
    end

  end
end
