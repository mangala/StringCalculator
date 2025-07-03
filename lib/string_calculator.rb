require 'pry'
module StringCalculator
	def add
		# return 0
		return to_i if !include?(',') #Add sungle number
		numbers = split(',').map{|n| n.to_i}
		numbers[0] + numbers[1] #Add 2 numbers
	end
end