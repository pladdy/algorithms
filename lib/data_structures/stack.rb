#!/usr/bin/env ruby

# Questions:
# why not just use an array?
#   array would work but it's more flexible and there could be scenarios where i
#   shoot myself in the foot.  with a class like this i limit myself to certain
#   methods
# how would i implement a stack in go?
#   there are examples out there, but not sure at this time
# how about in clojure?
#   a protocol?  would that even make sense?  not sure
module DataStructures
  class Stack
    attr_accessor :items

    def initialize
      @items = []
    end

    def take
      @items.pop()
    end

    def add(item)
      @items = @items.push(item)
    end

    def size
      @items.count
    end

    def to_binary(number_to_convert)
      remainders = Stack.new

      while number_to_convert > 0 do
        remainder = number_to_convert % 2
        remainders.add(remainder)
        number_to_convert = number_to_convert / 2 # could be optimized by shifting
      end

      binary_string = ""
      while remainders.size() > 0
        binary_string += remainders.take.to_s
      end

      return binary_string
    end
  end
end
