require 'minitest/autorun'
require 'minitest/pride'
require_relative './departments'
require_relative './employees'

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

  def test_get_dept_name
    accounting = Department.new("Accounting")
    assert_equal "Accounting", accounting.dept_name
  end

end
