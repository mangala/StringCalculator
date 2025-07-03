require "./lib/string_calculator.rb"

RSpec.describe 'StringCalculator', '#add' do
  it "returns 0 for empty string" do
	"".extend(StringCalculator).add.should == 0
  end
end