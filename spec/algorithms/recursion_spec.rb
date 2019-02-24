require "spec_helper"

describe Algorithms::Recursion do
  describe '#sum' do
    let(:numbers) { [1, 2, 3, 4, 5] }

    context 'when given a list of numbers' do
      it 'returns the sum' do
        expect(Algorithms::Recursion.sum(numbers)).to eq(15)
      end
    end
  end

  describe '#to_str' do
    context 'when given a positive integer and a base of 2' do
      it 'returns a binary string' do
        expect(Algorithms::Recursion.to_str(2, 2)).to eq("10")
      end
    end
  end

  describe '#fibi' do
    let(:fib_length) { 5 }
    let(:fib_sequence) { [0, 1, 1, 2, 3] }

    context 'when given a positive integer' do
      it 'returns a fibonacci sequence of given length' do
        expect(Algorithms::Recursion.fibi(fib_length)).to eq(fib_sequence)
      end
    end
  end

  describe '#fibr' do
    let(:fib_length) { 5 }
    let(:fib_sum) { 5 }

    context 'when given a positive integer' do
      it 'returns the sum of the integers in the sequence' do
        expect(Algorithms::Recursion.fibr(fib_length)).to eq(fib_sum)
      end
    end
  end

  describe '#reverse' do
    context 'when given a string' do
      it 'returns the string reversed' do
        expect(Algorithms::Recursion.reverse("foo")).to eq("oof")
      end
    end
  end

  describe '#palindrome?' do
    context 'when given a palindrome' do
      it 'returns true' do
        expect(Algorithms::Recursion.palindrome?("racecar")).to eq(true)
      end
    end

    context 'when given a string that is not a palindrome' do
      it 'returns false' do
        expect(Algorithms::Recursion.palindrome?("foo")).to eq(false)
      end
    end
  end
end
