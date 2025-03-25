module StringCalculator
	def add
		return 0 if empty?
		numbers = split(',').map{|n| n.to_i}
		numbers.inject {|sum, x| sum + x}
	end
end