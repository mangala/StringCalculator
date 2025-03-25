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

    it 'returns 1500 for 1000,200,300' do
      "1000,200,300".should equal_to(1500)
    end
  end

  it 'scenario 1: handle new line as delimeter' do
    "2\n3".should equal_to(5)
  end

  it 'scenario 2: handle new line as delimeter' do
    "2\n3, 5".should equal_to(10)
  end

  it 'scenario 3: handle multiple delimeter' do
    "//;\n1;2;3".should equal_to(6)
  end

  context 'negative number' do
    it 'raises an exception when negative numbers' do
      lambda {"-1".extend(StringCalculator).add }.should raise_exception('Negatives not allowed')
    end

    it 'includes multiple negative numbers in the message' do
      lambda {'-10,20,-15,-23'.extend(StringCalculator).add }.should raise_exception('Negatives not allowed: -10,-15,-23')
    end
  end
end