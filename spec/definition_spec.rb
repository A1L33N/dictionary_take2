require 'rspec'
require 'pry'
require 'definition'

describe Definition do
  describe "#definition" do
    it 'returns a definition' do
      program = Definition.new({:definition => "A planned series of future events, items, or PErformance", :type => 'noun'})
      expect(program.definition).to eq("a planned series of future events, items, or performance")
    end
  end

  describe "type" do
    it 'returns the type of definition' do
      program = Definition.new({:definition => "A planned series of future events, items, or PErformance", :type => 'noun'})
      expect(program.type).to eq("noun")

    end
  end



end
