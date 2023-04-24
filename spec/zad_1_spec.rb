require_relative '../zad_1'

describe 'check if a binary number is a power of 2' do
  context "when number is 1000" do
    it "returns true" do
      number = '1000'
      expect(power_of_two?(number)).to be true
    end
  end

  context "when number is 001000" do
    it "returns true" do
      number = '001000'
      expect(power_of_two?(number)).to be true
    end
  end

  context "when number is 1010" do
    it "returns false" do
      number = '1010'
      expect(power_of_two?(number)).to be false
    end
  end
end
