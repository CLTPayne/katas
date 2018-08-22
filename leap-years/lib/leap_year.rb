class LeapYear

  def initialize
  end

  def calculate(number)
    if number % 400 === 0 || number % 4 === 0 && number % 100 != 0
      "Yes that's a leap year! Enjoy Feb 29th!"
    elsif number % 4 != 0 || number % 100 === 0 && number % 400 != 0
      "No! Sorry, no extra day for you!"
    end
  end

end
