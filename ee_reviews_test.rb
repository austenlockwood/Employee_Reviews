require 'minitest/autorun'
require 'minitest/pride'
require_relative './departments'
require_relative './employees'
require_relative './ee_reviews'

class DepartmentTest < MiniTest::Test

  def test_dept_exists
    assert Department
  end

  def test_can_create_department
    accounting = Department.new("accounting")
    assert_equal "accounting", accounting.dept_name
  end

  def test_a_department_has_a_list_of_employees
    accounting = Department.new("Accounting")
    assert_equal [], accounting.employees
  end

  def test_add_ee_to_dept
    accounting = Department.new("accounting")
    accounting.add_ee_to_dept("Martha Hansen")
    accounting.employees
    assert_equal "Martha Hansen", accounting.employees[0]
  end

end

class EmployeeTest <MiniTest::Test

  def test_employee_class_exists
    assert Employee
  end

  def test_can_create_new_ee
    janice = Employee.new("Janice Smith", "janice@dunderaccounting.com", 4152025678, 48000)
    assert_equal "Janice Smith", janice.name
    assert_equal "janice@dunderaccounting.com", janice.email
    assert_equal 4152025678, janice.phone_number
    assert_equal 48000, janice.salary
  end

end
