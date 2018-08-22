class LeapYear

  def initialize
  end

  def calculate(num)
    if is_divisible_by_400?(num) || is_divisible_by_4?(num) && !is_divisible_by_100?(num)
      "Yes that's a leap year! Enjoy Feb 29th!"
    elsif !is_divisible_by_4?(num) || is_divisible_by_100?(num) && !is_divisible_by_400?(num)
      "No! Sorry, no extra day for you!"
    end
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
