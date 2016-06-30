require 'minitest/autorun'        # => true
require 'minitest/pride'          # => true
require_relative './departments'  # => true
require_relative './employees'    # => true
require_relative './ee_reviews'   # => true

class DepartmentTest < Minitest::Test  # => Minitest::Test

  def test_dept_exists
    assert Department   # => true
  end                   # => :test_dept_exists

  def test_can_create_department
    accounting = Department.new("accounting")   # => #<Department:0x007f9c138b5770 @name="accounting">
    assert_equal "accounting", accounting.name  # => true
  end                                           # => :test_can_create_department

end  # => :test_can_create_department

class EmployeeTest <MiniTest::Test  # => Minitest::Test

  def test_employee_class_exists
    assert Employee
  end                             # => :test_employee_class_exists

end  # => :test_employee_class_exists

# >> Run options: --seed 53756
# >>
# >> # Running:
# >>
# >> E..
# >>
# >> Finished in 0.001006s, 2982.0747 runs/s, 1988.0498 assertions/s.
# >>
# >>   1) Error:
# >> EmployeeTest#test_employee_class_exists:
# >> NameError: uninitialized constant EmployeeTest::Employee
# >> Did you mean?  Employees
# >>     /Users/austenlockwood/Desktop/TIYJun/wk2/ee_reviews/ee_reviews_test.rb:23:in `test_employee_class_exists'
# >>
# >> 3 runs, 2 assertions, 0 failures, 1 errors, 0 skips
