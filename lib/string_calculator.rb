require 'pry'
module StringCalculator
	def add
		# return 0
		return to_i if !include?(',') #Add sungle number
		numbers = split(',').map{|n| n.to_i}
		return numbers[0] + numbers[1] if numbers.size == 2 #Add 2 numbers
		numbers[0] + numbers[1] + numbers[2] if numbers.size == 3
	end
end