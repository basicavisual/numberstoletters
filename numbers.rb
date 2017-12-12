class Numbering
  attr_reader :number, :decimals, :splitted, :number_table

  def initialize(number)
    begin
      @number = Integer(number)
    rescue ArgumentError => e
      puts "There was an error with your input: #{e}"
    end

    self.splitting
    self.convert
  end

  def is_number?
    is_a? Numeric
  end

  NUMBER_TABLE = {
      1 => 'one',
      2 => 'two',
      3 => 'three',
      4 => 'four',
      5 => 'five',
      6 => 'six',
      7 => 'seven',
      8 => 'eight',
      9 => 'nine',
      10 => 'ten',
      11 => 'eleven',
      12 => 'twelve',
      13 => 'thirteen',
      14 => 'fourteen',
      15 => 'fifteen',
      16 => 'sixteen',
      17 => 'seventeen',
      18 => 'eighteen',
      19 => 'nineteen',
      20 => 'twenty',
      30 => 'thirty',
      40 => 'fourty',
      50 => 'fifty',
      60 => 'sixty',
      70 => 'seventy',
      80 => 'eighty',
      90 => 'ninety',
      100 => 'one hundred',
      200 => 'two hundred',
      300 => 'three hundred',
      400 => 'four hundred',
      500 => 'five hundred',
      600 => 'six hundred',
      700 => 'seven hundred',
      800 => 'eight hundred',
      900 => 'nine hundred',
      1000 => 'one thousand',
      1100 => 'eleven hundred',
      1200 => 'twelve hundred',
      1300 => 'thirteen hundred',
      1400 => 'fourteen hundred',
      1500 => 'fifteen hundred',
      1600 => 'sixteen hundred',
      1700 => 'seventeen hundred',
      1800 => 'eighteen hundred',
      1900 => 'nineteen hundred',
    }


  def splitting
    @number = @number.to_i
    @splitted =  @number.to_s.split("") # this line and the preceding ensure numbers starting with 0 get initial 0 dropped
    @decimals =  @splitted.count - 1

  end

  def spew
    digits = decimals
    @decimals.times do |n|
      digits.times { @splitted[n] << "0" }
      print NUMBER_TABLE[( @splitted[n] ).to_i] + " " unless @splitted[n].to_i == 0
      digits -= 1
      print "and " if digits == 1
    end
    print NUMBER_TABLE[self.splitted[-1].to_i]
  end

  def convert
    if @number < 20
      print NUMBER_TABLE[@number]
    elsif @number > 999 && @number < 2000
    # because all numbers between 1100 and 1999 have a different notation (eleven hundred instead of one thousand one hundred, etc.) I wrote this exception.
      print NUMBER_TABLE[(self.splitted[0..1].join("") + "00").to_i] + " and "
      @splitted = self.splitted.drop(2)
      @decimals = decimals - 2
      self.spew
    elsif @number >= 2000
      a = self.splitted.slice!(-3..-1)
      if @number < 2000
        print NUMBER_TABLE[self.splitted.join("").to_i]
      else
        @decimals = decimals - 3
        self.spew
      end
      print " thousand "
      @splitted = a
      @decimals = 2
      self.spew
    else
      self.spew
    end
  end
end

require "test/unit"

class NumberingTest < Test::Unit::TestCase
 def test_numbering
   assert Numbering.new(rand(0..19999))
 end

  def test_letters
    assert Numbering.new("jkhlhk")
  end
end
