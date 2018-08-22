require "leap_year"

describe LeapYear do

  subject(:leap_year) { described_class.new}

  describe "#year" do

    it "returns affirmative if a year is divisible by 400" do
      expect(leap_year.calculate(2000)).to eq("Yes that's a leap year! Enjoy Feb 29th!")
    end

    it "returns affirmative if a year is divisible by 4 but not by 100" do
      expect(leap_year.calculate(2008)).to eq("Yes that's a leap year! Enjoy Feb 29th!")
    end

    it "returns negative if a year is not divisible by 4" do
      expect(leap_year.calculate(2017)).to eq("No! Sorry, no extra day for you!")
    end

    it "returns negative if a year is divisible by 100 but not by 400" do
      expect(leap_year.calculate(1700)).to eq("No! Sorry, no extra day for you!")
    end

  end

  describe "#greeting" do

    it "asks a user to enter a year" do
      expect(leap_year.greeting).to eq("Hello. Please enter a year: ")
    end

  end

  describe "#user_input" do

    before(:each) do
      allow(leap_year).to receive(:gets).and_return(2000)
    end

    it "accepts a user input" do
      leap_year.user_input
      expect(leap_year.requested_year).to eq(2000)
    end

  end

  describe "#interface" do

    it "calculates a whether a user input of 2000 is a leap year" do
      allow(leap_year).to receive(:gets).and_return(2000)
      expect(leap_year.interface).to eq("Yes that's a leap year! Enjoy Feb 29th!")
    end

    it "calculates a whether a user input of 1900 is not a leap year" do
      allow(leap_year).to receive(:gets).and_return(1900)
      expect(leap_year.interface).to eq("No! Sorry, no extra day for you!")
    end

  end

end
