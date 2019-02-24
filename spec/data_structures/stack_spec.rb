require "spec_helper"

describe DataStructures::Stack do
  describe '#initialize' do
    context 'when creating a stack' do
      it 'returns a stack' do
        stack = DataStructures::Stack.new()
        expect(stack).to be_an_instance_of(DataStructures::Stack)
      end
    end
  end
end
