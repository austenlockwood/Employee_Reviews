
class Department

  def initialize(dept_name)
    @dept_name = dept_name
  end

  def dept_name
    @dept_name
  end

end

#this will create a Department object.
accounting = Department.new("accounting")
