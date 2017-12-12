class Numbering
  attr_reader :number, :decimals, :splitted, :number_table

  def initialize(number: number)
    @number = number
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
      1000 => 'thousand',
      1100 => 'eleven hundred',
      1200 => 'twelve hundred',
      1300 => 'thirteen hundred',
      1400 => 'fourteen hundred',
      1500 => 'fifteen hundred',
      1600 => 'sixteen hundred',
      1700 => 'seventeen hundred',
      1800 => 'eighteen hundred',
      1900 => 'nineteen hundred',
      100000 => 'a hundred',
      1000000 => 'a million'
    }


  def splitting
    @splitted =  @number.split("")
    @decimals =  @splitted.count - 1
    @number = @number.to_i
  end

  def spew
    m = []
    @decimals.times do |n|
      digits = decimals
      digits.times { m << "0" }
      print NUMBER_TABLE[( @splitted[n] + m.join("")).to_i] + " "
      digits -= 1
      m = []
    end
    print NUMBER_TABLE[@splitted.last.to_i]
  end

  def convert

    if @number <= 20
      NUMBER_TABLE[@number]
    elsif @decimals < 3
      self.spew
    end
  end
end

puts 'give me a number'
num = gets.chomp
conversion = Numbering.new(number: num)
conversion.splitting
conversion.convert
