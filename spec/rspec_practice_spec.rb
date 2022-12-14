require "rspec_practice.rb"

describe '#my_unique' do
    subject(:uniq) { [1, 2, 3, 1, 1, 2] }
       
    before(:each) do
        # 'should not make use of array.uniq' do
        expect(uniq).not_to receive(:uniq)
     end

    context 'with invalid arguments' do
        it 'raises error when not provided array' do
            expect{ my_unique(0)}.to raise_error("Invalid Input")
        end
    end

    context 'with valid arguments' do
        it 'should return the array if there are no duplicates' do
            expect(my_unique([1, 2, 3])).to eq([1, 2, 3])
        end

        it 'should return the unique element in the order in which they first appeared' do
            expect(my_unique([2, 1, 3, 1])).to eq([2, 1, 3])
        end
        
        it 'should not mutate the array' do
            expect(my_unique(uniq)).to_not be(uniq)
        end
    end

    # context 'with invalid arguments' do
        # it 'should not mutate the array' do
        #     expect(my_unique(uniq)).to_not be(uniq)
        # end

        # it 'should not make use of array.uniq' do
        #     expect(uniq).to_not receive(:uniq).and_return([1, 2, 3])
        # end
    # end
end



describe 'Array#two_sum' do 
    it 'shows all pairs of positions in order shown' do 
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
end



describe '#my_transpose' do
    subject(:arr) {[[0, 1, 2], [3, 4, 5], [6, 7, 8]]}
    before(:each) do
        expect(arr).not_to receive(:transpose)
    end

    it 'should transpose rows into columns' do
        expect(my_transpose(arr)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end 
end


describe '#stock_picker' do 
    it 'should return the two dates for highest possible stock return' do
        expect(stock_picker([12000, 400, 600, 100, 700, 500])).to eq([3, 4])
    end
end