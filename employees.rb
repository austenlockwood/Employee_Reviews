class Employee

  def initialize(name, email, phone_number, salary)
    @name = name
    @email = email
    @phone_number = phone_number
    @salary = salary
    @review = ""
    @satisfactory = ""
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

  def satisfactory
    @satisfactory
  end

  def is_satisfactory(text)
    @satisfactory = text
    if @satisfactory == ("yes" || "satisfactory")
      @satisfactory = :true_value
    else
      @satisfactory = :false_value
    end
  end

end
