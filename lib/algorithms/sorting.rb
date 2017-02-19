#!/usr/bin/env ruby

module Algorithms
  module Sorting
    ##
    # terrible algorithm to use for sorting in general (unless you know some how
    # you'll have minimal passes?); has to iterate the full list each pass and sort
    # things to verify they're all sorted in the end.
    ##
    def self.bubble_sort(list)
      passes = list.count

      passes.times do |pass|
        swaps = 0
        list.each_index do |index|
          break if index + 1 == passes # on last index, already compared/swapped

          if list[index] > list[index + 1]
            list[index], list[index + 1] = list[index + 1], list[index]
            swaps += 1
          end
        end
        break if swaps == 0 # if we passed thru the list and didn't swap, stop
      end

      return list
    end

    ##
    # selection sort takes the max value in a list and puts it at the end.  the
    # result of that is each pass you have one less item to check and swap.
    # improves on the bubble sort
    ##
    def self.selection_sort(list)
      passes = list.count

      passes.times do |pass|
        break if pass == passes - 1 # skip last pass, list is sorted
        max_value, max_value_index = list[0], 0

        list.each_index do |index|
          if list[index] > max_value
            max_value, max_value_index = list[index], index
          end

          if index == (passes - 1) - pass
            list[index], list[max_value_index] = list[max_value_index], list[index]
          end
        end
      end

      return list
    end

    ##
    # insertion sort keeps a sublist of sorted items as it sorts the list.  the
    # sublist is checked from right to left (desending to ascending) for each
    # element to be sorted.  once you find an element less than the value of the
    # item being sorted (or you're at the beginning of the list) the list is sorted.
    ##
    def self.insertion_sort(list)
      passes = list.count

      passes.times do |pass|
        next if pass == 0 # one item list is sorted

        index = pass
        while index > 0 do
          if list[index] < list[index - 1]
            list[index], list[index - 1] = list[index - 1], list[index]
          else
            break
          end

          index -= 1
        end
      end
      return list
    end
  end
end
