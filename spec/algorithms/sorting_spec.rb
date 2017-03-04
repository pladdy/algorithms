require "spec_helper"

describe Algorithms::Sorting do
    let(:unsorted) do
      [ [],
        [42],
        [21, 8],
        [3, 2, 1],
        [8, 1, 24, 3, 9, 4, 37, 17],
        [999, 4, 0, 1, 288, 4, 9, 12],
      ]
    end

    let(:sorted) do
      [
        [],
        [42],
        [8, 21],
        [1, 2, 3],
        [1, 3, 4, 8, 9, 17, 24, 37],
        [0, 1, 4, 4, 9, 12, 288, 999],
      ]
    end

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

  describe '#shell_sort' do
    it 'should sort numbers ascending' do
      unsorted.each_index do |i|
        expect(Algorithms::Sorting.shell_sort(unsorted[i])).to eq(sorted[i])
      end
    end
  end

  describe '#merge_sort' do
    it 'should sort numbers ascending' do
      unsorted.each_index do |i|
        expect(Algorithms::Sorting.merge_sort(unsorted[i])).to eq(sorted[i])
      end
    end
  end

  describe '#quick_sort' do
    it 'should sort numbers ascending' do
      unsorted.each_index do |i|
        expect(Algorithms::Sorting.quick_sort(unsorted[i])).to eq(sorted[i])
      end
    end
  end
end
