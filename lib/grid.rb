
class Grid 


	def I(m, n)
		@a = Array.new(m) {Array.new(n,  '0')}
	end

	def S
		@a.each do |line|
  	puts line.map { |pixel| pixel }.join(" ")
		end
	end

	def L(x, y, colour)
		@a[x-1][y-1] = colour
	end

	def V (x, y1, y2, colour)
		line = y1.upto(y2).to_a
		line.each { |y| @a[y-1][x-1] = colour }
	end

	def H(x1, x2 , y, colour)
		line = x1.upto(x2).to_a
		line.each { |x| @a[y-1][x-1] = colour }
	end

	def C
		@a.each do |line|
		line.map! {|pixel| pixel = '0'}
		end
	end

	def F2(x, y, new_colour, old_colour)		
		current_colour = @a[x-1][y-1] 
		return if current_colour != old_colour
		@a[x-1][y-1] = new_colour
		F2(x-1, y, new_colour, old_colour)
		F2(x+1, y, new_colour, old_colour)
		F2(x, y-1, new_colour, old_colour)
		F2(x, y+1, new_colour, old_colour)
		F(x-1, y+1, new_colour, old_colour) 
      	F2(x+1, y-1, new_colour, old_colour)
	end

	def F(x, y, colour)
		F2(x, y, colour, @a[x-1][y-1])
	end
	
	
	
	
end
