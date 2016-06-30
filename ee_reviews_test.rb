require 'minitest/autorun'
require 'minitest/pride'
require_relative './departments'
require_relative './employees'
require_relative './ee_reviews'

class DepartmentTest < Minitest::Test

  def test_dept_exists
    assert Department
  end

  def test_can_create_department
    accounting = Department.new("accounting")
    assert_equal "accounting", accounting.name
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
