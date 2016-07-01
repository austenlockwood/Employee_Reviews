class Employee

  def initialize(name, email, phone_number, salary)
    @name = name
    @email = email
    @phone_number = phone_number
    @salary = salary
    @review = ""
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

  def review
    @review
  end

  def add_review(text)
    @review = text
  end

end
