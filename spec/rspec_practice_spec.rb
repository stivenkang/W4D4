require "rspec_practice.rb"

describe '#my_unique' do
    it 'raises error when not provided array' do
        expect{ my_unique(0)}.to raise_error("Invalid Input")
    end

    context 'with valid arguments' do
        it 'should return the array if there are no duplicates' do
            expect(my_unique([1, 2, 3])).to eq([1, 2, 3])
        end

        it 'should return the unique element in the order in which they first appeared' do
            expect(my_unique([2, 1, 3, 1])).to eq([2, 1, 3])
        end
    end
end