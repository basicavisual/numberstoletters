
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

class Numbering
  def convert(num)
    puts NUMBER_TABLE[num]
  end
end

puts 'give me a number'
number = gets.chomp.to_i
conversion = Numbering.new
puts conversion.convert(number)
