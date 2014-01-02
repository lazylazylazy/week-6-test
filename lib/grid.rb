
class Grid 

	def I(m, n)
		@a = Array.new(m) {Array.new(n,  '0')}
	end

	def S
		@a.each do |line|
  	puts line.map { |px| px }.join(" ")
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
		line = x1.upto(x2).to_a
		line.each { |x| @a[y-1][x-1] = colour }
	end

	def C
		@a.each do |line|
		line.map! {|px| px = '0'}
		end
	end

	def F(x, y, colour)
		old_colour = @a[x-1][y-1]
		return if @a[y-1][x-1]!= old_colour #what if old_colour and colour match?
		return if @a[y-1][x-1] == colour
		L(x, y, colour)
		F(x, y, colour)
		F(x-1, y, colour)
		F(x+1, y, colour)
		F(x, y-1, colour)
		F(x, y+1, colour)
		F(x-1, y+1, colour) 
		F(x+1, y-1, colour)
		#currently overwrites non-R values 
	end
	
	
	
end
