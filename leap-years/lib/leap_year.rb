class LeapYear

  attr_accessor :requested_year

  def initialize
    @requested_year = ""
  end

  def calculate(num)
    if is_divisible_by_400?(num) || is_divisible_by_4?(num) && !is_divisible_by_100?(num)
      "Yes that's a leap year! Enjoy Feb 29th!"
    elsif !is_divisible_by_4?(num) || is_divisible_by_100?(num) && !is_divisible_by_400?(num)
      "No! Sorry, no extra day for you!"
    end
  end

  def interface
    greeting
    user_input
    calculate(@requested_year)
  end

  def greeting
    return "Hello. Please enter a year: "
  end

  def user_input
    @requested_year = gets.to_i
  end

  private

  def is_divisible_by_400?(num)
    num % 400 === 0
  end

  def is_divisible_by_4?(num)
    num % 4 === 0
  end

  def is_divisible_by_100?(num)
    num % 100 === 0
  end

end
