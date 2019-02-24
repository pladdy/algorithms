##
# make a 'sum' function that takes a list of numbers and adds them up
# assumes you're passing only number-like types
# note: Array.sum() does this already
module Algorithms
  # Recursive functions must
  # - have a base case
  # - must move towards the base case each recursion
  # - must call itself
  #
  module Recursion
    def self.sum(*numbers)
      Algorithms::Recursion.sum_array(numbers.flatten)
    end

    def self.sum_array(numbers)
      return numbers[0] if numbers.count == 1 # base case
      return numbers.pop + sum(numbers)       # recurse
    end

    # turn an integer into a string given an int and a base
    def self.to_str(number, base = 10)
      digit_strings = "0123456789ABCDEF".split(//)
      if number < base
        return digit_strings[number]
      else
        return to_str(number / base, base) + digit_strings[number % base]
      end
    end

    # fibonacci sequence, iterative
    def self.fibi(length)
      sequence = []

      length.times do |i|
        if sequence.count < 2
          sequence.push(i) # will push 0, and then 1
        else
          sequence.push(sequence[i - 1] + sequence[i - 2])
        end
      end

      return sequence
    end

    # Recursive implementation of the fibonacci sequence.
    # @return [Integer] the sum of the sequence
    #
    def self.fibr(length)
      if length == 0
        return 0
      elsif length == 1
        return 1
      else
        fibr(length - 1) + fibr(length - 2)
      end
    end

    # Given a string, return it's reverse
    # @note just use `.reverse`
    #
    def self.reverse(s)
      characters = s.split(//)
      if characters.length == 1
        return characters[0]
      else
        characters.pop + reverse(characters.join)
      end
    end

    # Given a string, return true if it's a palindrome (when reversed it's the same word)
    #
    # @return [Bool] returns true or false
    #
    # @example
    #   Algorithms::Recursive.palindrome?("racecar") # returns true
    #   Algorithms::Recursive.palindrome?("foo") # returns false
    #
    def self.palindrome?(s)
      s == self.reverse(s)
    end
  end
end
