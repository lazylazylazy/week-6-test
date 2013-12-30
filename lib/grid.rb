
class Grid 

	def I(m, n)
		@a = Array.new(m) {Array.new(n,  '0')}
	end

	def S
		@a.each do |px|
  	puts px.map { |p| p }.join(" ")
		end
	end

	def L(x, y, colour)
		@a[x-1][y-1] = colour
	end

	def V (x, y1, y2, colour)
		line = y1.upto(y2).to_a
		line.each { |y| @a[y-1][x-1] = colour }
	end

	def H (x1, x2 , y, colour)
		
	end

	def C
		@a.each do |px|
		px.map! {|p| p = '0'}
		end
	end
	
	# def convert_input(x, y1, y2)
	# 	x, y1, y2 = x-1, y1-1, y2-1
	# end
	




end
