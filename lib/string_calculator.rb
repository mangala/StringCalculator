# require 'pry'
module StringCalculator
  def add
    return 0 if empty?
    raise_if_negative_numbers
    numbers.inject {|sum, x| sum + x}
  end

  def raise_if_negative_numbers
    negatives = numbers.select{|n| n<0}
    if negatives.any?
      message = negatives.count > 1 ? "Negatives not allowed: #{negatives.join(',')}" : 'Negatives not allowed'
      raise message
    end
  end

  def numbers
    gsub("\n",delimiter).split(delimiter).map{|n| n.to_i}
  end

  def delimiter
    self[0,2] == '//' ? ';' : ','
  end
end