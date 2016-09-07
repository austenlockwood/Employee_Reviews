class Employee

attr_accessor :name
attr_accessor :email
attr_accessor :phone_number
attr_accessor :salary
attr_accessor :reviews

  def initialize(name, email, phone_number, salary)
    @name = name
    @email = email
    @phone_number = phone_number
    @salary = salary
    @reviews = []
    @satisfactory = ""
    @raise = ""
  end

  def add_review(text)
    @reviews.push(text)
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

  def raise
    @raise
  end

  def give_raise(text)
    @raise = text.to_i
    @salary += @raise
  end

end
