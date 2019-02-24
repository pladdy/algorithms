#!/usr/bin/env ruby

module DataStructures
  class Stack
    attr_accessor :items, :top

    # Create a new, empty, stack.
    #
    # @example Example:
    #   stack = DataStructures::Stack.new
    #
    def initialize
      @size = 0
    end

    # Return the top item on the stack.
    # @note This method removes the returned item from the stack.
    #
    # @example
    #   stack = DataStructures::Stack.new
    #   top_item = stack.pop
    #
    def pop
      to_pop = @top
      @top = to_pop.next

      @size -= 1
      return to_pop.data
    end

    # Adds an item to the top of the stack.
    # @param item [Object] the object being added to the stack
    #
    # @example
    #   stack = DataStructures::Stack.new
    #   stack.push("foo")
    #
    def push(item)
      new_top = Stack::Item.new(item)
      if @top != nil
        new_top.next = @top
      end

      @size += 1
      @top = new_top
    end

    # Return the size (number of items) of the stack.
    #
    # @example
    #   stack = DataStructures::Stack.new
    #   size = stack.size
    #
    def size
      @size
    end

    # Stack::Item represents an Object that can be stacked.
    #
    class Item
      attr_accessor :data, :next

      def initialize(data)
        @data = data
      end
    end
  end
end
