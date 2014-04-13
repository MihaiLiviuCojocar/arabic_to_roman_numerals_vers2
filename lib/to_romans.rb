NUMERALS = {
  1    => "I",
  4    => "IV",
  5    => "V",
  9    => "IX",
  10   => "X",
  40   => "XL",
  50   => "L",
  90   => "XC",
  100  => "C",
  400  => "CD",
  500  => "D",
  900  => "DM",
  1000 => "M"
}


def get_closest_number_from_hash(number)
  NUMERALS.sort_by { |key, value| key }.select { |arabic, roman| arabic <= number }.last
end

class Fixnum

  def to_romans
    number = self
    solution = ""
    while number > 0
      closest_number, roman = get_closest_number_from_hash(number)
      multiplier = number / closest_number
      solution << roman * multiplier
      number = number % closest_number
    end
    solution
  end

end


