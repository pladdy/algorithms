#!/usr/bin/env ruby

module DataStructures
  class Stack
    attr_accessor :items, :top

    def initialize
      @size = 0
    end

    # Return the top item of the stack.
    #
    def pop
      to_pop = @top
      @top = to_pop.next

      @size -= 1
      return to_pop.data
    end

    # Takes an arguemnt and adds it to the stack.
    #
    def push(item)
      new_top = Stack::Item.new(item)
      if @top != nil
        new_top.next = @top
      end

      @size += 1
      @top = new_top
    end

    def size
      @size
    end

    class Item
      attr_accessor :data, :next

      def initialize(data)
        @data = data
      end
    end
  end
end
