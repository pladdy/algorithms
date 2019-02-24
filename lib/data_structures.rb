require 'data_structures/stack'

module DataStructures
  # Given a base 10 number, convert it to a binary string repesentation.
  # @param number_to_convert [Number] a number, to convert to a binary string
  #
  # @example
  #   binary_string = DataStructures.to_binary(2)
  #   # binary_string equals "10"
  #
  def self.to_binary(number_to_convert)
    remainders = DataStructures::Stack.new
    number_to_convert = number_to_convert.abs

    while number_to_convert > 0 do
      remainder = number_to_convert % 2
      remainders.push(remainder)
      number_to_convert = number_to_convert / 2 # could be optimized by shifting
    end

    binary_string = ""
    while remainders.size > 0
      binary_string += remainders.pop.to_s
    end

    return binary_string
  end
end
