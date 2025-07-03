require 'pry'
module StringCalculator
	def add
		return 0 if empty?
		delimiter = ','
		numbers = gsub("\n",delimiter).split(delimiter).map{|n| n.to_i}
		numbers.inject {|sum, x| sum + x}
	end
end