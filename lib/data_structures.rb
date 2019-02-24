require 'data_structures/stack'

module DataStructures
  def self.to_binary(number_to_convert)
    remainders = DataStructures::Stack.new

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
