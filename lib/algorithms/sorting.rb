#!/usr/bin/env ruby

require 'algorithms/helpers'

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
    def self.insertion_sort(list, start_index = 0, gap = 1)
      passes = list.count

      passes.times do |pass|
        next if pass == start_index # one item list is sorted

        index = pass
        while index > start_index do
          if list[index] < list[index - gap]
            list[index], list[index - gap] = list[index - gap], list[index]
          else
            break
          end

          index -= gap
        end
      end
      return list
    end

    ##
    # the shell sort builds on the insertion sort.  rather than doing an insertion
    # sort on one list, the list is split up into sublists and each sublist is
    # sorted with an insertion sort method.
    ##
    def self.shell_sort(list)
      sublists = list.count / 2

      while sublists > 0
        sublists.times do |i|
          list = insertion_sort(list, i, sublists)
        end
        sublists = sublists / 2
      end
      return list
    end

    ##
    # divide and conquer algorithm that splits a list in half until it makes the
    # smallest list (1, sorted by default), and then beings to merge the items.
    ##
    def self.merge_sort(list)
      return list if list.count <= 1 # base case

      half_way = list.length / 2
      first_half = list.slice(0, half_way)
      second_half = list.slice(half_way, list.length)

      first_merge = merge_sort(first_half)
      second_merge = merge_sort(second_half)

      return merge(first_merge, second_merge)
    end

    ##
    # quick sort is another divide and conquer sort that's also recursive.
    # however it's speed is heavily depdendent on picking the a good pivot
    # item to sort around.  if an item is picked that is a bad pivot item you
    # end up doing more comparisons then you'd have to.
    ##
    def self.quick_sort(list, low = 0, high = nil)
      return list unless list.length > 1

      high = list.length - 1 if high.nil?

      if low < high
        partition_index = partition(list, low, high)
        quick_sort(list, low, partition_index - 1)
        quick_sort(list, partition_index + 1, high)
      end

      return list
    end
  end
end
