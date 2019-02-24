require "spec_helper"

describe 'DataStrcutures' do
  describe '#to_binary' do
    integers = [-21, -10, -2, 2, 10, 21]
    binary_strings = ["10101", "1010", "10", "10", "1010", "10101"]

    it 'converts integer to binary string' do
      integers.each_index do |i|
        expect(DataStructures.to_binary(integers[i])).to eq binary_strings[i]
      end
    end
  end
end
