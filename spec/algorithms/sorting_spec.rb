require "spec_helper"

describe Algorithms::Sorting do
  unsorted = [
    [],
    [42],
    [21, 8],
    [3, 2, 1],
    [8, 1, 24, 3, 9, 4, 37, 17],
  ]
  sorted = [
    [],
    [42],
    [8, 21],
    [1, 2, 3],
    [1, 3, 4, 8, 9, 17, 24, 37],
  ]

  describe '#bubble_sort' do
    it 'should sort numbers ascending' do
      unsorted.each_index do |i|
        expect(Algorithms::Sorting.bubble_sort(unsorted[i])).to eq(sorted[i])
      end
    end
  end

  describe '#selection_sort' do
    it 'should sort numbers ascending' do
      unsorted.each_index do |i|
        expect(Algorithms::Sorting.selection_sort(unsorted[i])).to eq(sorted[i])
      end
    end
  end

  describe '#insertion_sort' do
    it 'should sort numbers ascending' do
      unsorted.each_index do |i|
        expect(Algorithms::Sorting.insertion_sort(unsorted[i])).to eq(sorted[i])
      end
    end
  end

end
