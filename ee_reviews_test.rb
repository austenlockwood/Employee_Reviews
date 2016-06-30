require 'minitest/autorun'
require 'minitest/pride'
require_relative './departments'
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
