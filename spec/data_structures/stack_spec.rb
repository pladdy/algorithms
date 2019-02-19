require "spec_helper"

describe DataStructures::Stack do
  integers = [2, 10, 21]
  binary_strings = ["10", "1010", "10101"]

  describe '#to_binary' do
    it 'converts integer to binary string' do
      integers.each_index do |i|
        expect(DataStructures::Stack.new.to_binary(integers[i])).to eq binary_strings[i]
      end
    end
  end
end
