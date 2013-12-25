require_relative '../lib/grid'

describe Grid do 

	let(:grid) {Grid.new}

	it 'should generate grid of given size' do
			is = grid.i(4,5)
	expect(is[0].length).to eq(5)
	expect(is[1].length).to eq(5)
	expect(is[2].length).to eq(5)
	expect(is[3].length).to eq(5)
	expect(is.count).to eq(4)
	end

	it 'should show grid' do
		grid.i(2,2)
		expect(grid.s).to eq([['0','0'],['0','0']])
	end

	it 'should replace given element with a letter' do
		grid.i(2,2)
		grid.l(2,2,'c')
		expect(grid.s).to eq([['0','0'],['0','c']])
	end

end