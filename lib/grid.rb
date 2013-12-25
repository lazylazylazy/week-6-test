class Grid 

def i(m, n)
	@a = Array.new(m) {Array.new(n,  '0')}
end

def s
	pixel = @a
	pixel.each do |e|
  puts e.map { |p| p }.join(" ")
	end
end

def l(x, y, colour = 'c')
	@a[x-1][y-1] = colour
end


end
