require 'rspec'
require 'pry'
require 'definition'

describe Definition do
#  @@all_definitions = []

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

  describe ".all" do
    it 'returns and empty array of definitions.' do
      expect(Definition.all).to eq([])
    end
  end



end
