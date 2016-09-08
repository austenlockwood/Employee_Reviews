require 'minitest/autorun'
require 'minitest/pride'
require_relative './departments'
require_relative './employees'

class EmployeeTest <MiniTest::Test

  def janice
    @janice ||= Employee.new("Janice Smith", "janice@dunderaccounting.com", 4152025678, 48000)
  end

  def martha
    @martha ||= Employee.new("Martha Hansen", "martha@dunderaccounting.com", 2022022202, 32000)
  end

  def gorlock
    @gorlock ||= Employee.new("Gorlock Colbert", "gorlock@dunderaccounting.com", 9991112222, 15000)
  end

  def alan
    @alan ||= Employee.new("Alan Carlos", "alan@dunderhumanresources.com", 3019342567, 55000)
  end

  def test_employee_class_exists
    assert Employee
  end

  def test_can_create_new_ee
    janice
    assert_equal "Janice Smith", janice.name
    assert_equal "janice@dunderaccounting.com", janice.email
    assert_equal 4152025678, janice.phone_number
    assert_equal 48000, janice.salary
  end

  def test_can_get_sum_of_dept_salaries

    janice
    martha
    gorlock
    alan

    accounting = Department.new("Accounting")
    human_resources = Department.new("Human Resources")

    accounting.add_ee_to_dept(janice)
    accounting.add_ee_to_dept(martha)
    accounting.add_ee_to_dept(gorlock)
    human_resources.add_ee_to_dept(alan)

    assert_equal 95000, accounting.total_salary
    assert_equal 55000, human_resources.total_salary
  end

  def test_can_add_narrative_review_to_ee
    gorlock
    gorlock.add_review("Gorlock is great.")
    gorlock.add_review("Gorlock was tardy today.")
    gorlock.reviews
    assert_equal ["Gorlock is great.", "Gorlock was tardy today."], gorlock.reviews
  end

  def test_can_mark_ee_satisfactory_or_not_satisfactory
    janice
    janice.is_satisfactory("no")
    janice.satisfactory
    assert_equal :false_value, janice.satisfactory

    gorlock
    gorlock.is_satisfactory("yes")
    gorlock.satisfactory
    assert_equal :true_value, gorlock.satisfactory
  end

  def test_can_give_raise_to_ee
    gorlock
    gorlock.give_raise("1200")
    gorlock.raise
    assert_equal 1200, gorlock.raise
    assert_equal 16200, gorlock.salary
  end

  def test_can_give_all_satisfactory_ees_in_dept_same_dollar_raise
    janice
    martha
    gorlock
    alan

    accounting = Department.new("Accounting")
    human_resources = Department.new("Human Resources")

    accounting.add_ee_to_dept(janice)
    accounting.add_ee_to_dept(martha)
    accounting.add_ee_to_dept(gorlock)
    human_resources.add_ee_to_dept(alan)

    janice.is_satisfactory("no")
    martha.is_satisfactory("yes")
    gorlock.is_satisfactory("yes")
    alan.is_satisfactory("yes")

    accounting
    accounting.give_all_satisfactory_ees_raise("4000")
    assert_equal 34000, martha.salary
  end
  
end
