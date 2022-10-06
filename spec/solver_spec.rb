require_relative '../solver'

RSpec.describe Solver do
  describe '#solver' do
    it 'should be an instance of a class solver' do
      solver = Solver.new
      expect(solver).to be_instance_of Solver
    end
  end
  describe '#factorial' do
    it 'should receive a method factorial and return factorial of n' do
      fact = Solver.new
      expect(fact).to receive(:factorial).with(5).and_return(120)
      expect(fact.factorial(5)).to eql(120)
    end
  end
  describe '#reverse' do
    it 'should receive a method reverse and return reveresed string' do
      reversed = Solver.new
      expect(reversed).to receive(:reverse).with('hello').and_return('olleh')
      expect(reversed.reverse('hello')).to eql('olleh')
    end
  end
  describe '#fizzbuzz' do
    it 'should receive a method fizzbuzz and return string "fizz", "buzz" or "fizzbuzz" based on input' do
      fizz = Solver.new
      expect(fizz).to receive(:fizzbuzz).with(15).and_return '1,2,fizz,4,buzz,fizz,7,8,fizz,buzz,11,fizz,13,14,fizzbuzz'
      expect(fizz.fizzbuzz(15)).to eql('1,2,fizz,4,buzz,fizz,7,8,fizz,buzz,11,fizz,13,14,fizzbuzz')
    end
  end
end
