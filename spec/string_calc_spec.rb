require "./lib/string_calculator.rb"


RSpec::Matchers.define :equal_to do |expected|
  match do |string|
    string.extend(StringCalculator).add == expected
  end
end

RSpec.describe 'StringCalculator', '#add' do
  it "returns 0 for empty string" do
    "".should equal_to(0)
  end

  context 'single number' do
    it 'returns 1 for 1' do
      '1'.should equal_to(1)
    end

    it 'returns 10 for 10' do
      '10'.should equal_to(10)
    end

    it 'returns 21 for 21' do
      '21'.should equal_to(21)
    end
  end

  context '2 numbers' do
    it 'returns 3 for 1,2' do
      "1,2".should equal_to(3)
    end

    it 'returns 49 for 25,24' do
      "25,24".should equal_to(49)
    end
  end

  context '3 numbers' do
    it 'returns 6 for 1,2,3' do
      "1,2,3".should equal_to(6)
    end

  end
end