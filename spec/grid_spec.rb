require_relative '../lib/grid'

describe Grid do 

	let(:grid) {Grid.new}

	it 'should generate grid of given size' do
			is = grid.I(4,5)
	expect(is[0].length).to eq(5)
	expect(is[1].length).to eq(5)
	expect(is[2].length).to eq(5)
	expect(is[3].length).to eq(5)
	expect(is.count).to eq(4)
	end

	it 'should show grid' do
		grid.I(2,2)
		expect(grid.S).to eq([['0','0'],['0','0']])
	end

	it 'should replace given element with a letter' do
		grid.I(2,2)
		grid.L(2,2, 'b')
		expect(grid.S).to eq([['0','0'],['0','b']])
	end

	it 'should draw a vertical line' do
		grid.I(5,5)
		grid.V(2, 1, 4 , 'b')
		grid.V(1, 1, 4, 'c')
		expect(grid.S).to eq([["c", "b", "0", "0", "0"], ["c", "b", "0", "0", "0"], ["c", "b", "0", "0", "0"], ["c", "b", "0", "0", "0"], ["0", "0", "0", "0", "0"]])
	end

	it 'should be able to be cleared' do
	grid.I(2,5)
	grid.V(1, 1, 2, 'b')
	grid.C
	expect(grid.S).to eq([["0", "0", "0", "0", "0"], ["0", "0", "0", "0", "0"]])
	end

	it 'should draw a horizontal line' do
		grid.I(5,5)
		grid.H(1,5,3, 'h')
		expect(grid.S).to eq([["0", "0", "0", "0", "0"], ["0", "0", "0", "0", "0"], ["h", "h", "h", "h", "h"], ["0", "0", "0", "0", "0"], ["0", "0", "0", "0", "0"]])
	end


end