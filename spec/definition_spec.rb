require 'rspec'
require 'pry'
require 'definition'

describe Definition do
  @@all_definitions = []

  describe "#definition" do
    it 'returns a definition' do
      program = Definition.new({:definition => "A planned series of future events, items, or PErformance", :type => 'noun'})
      expect(program.definition).to eq("a planned series of future events, items, or performance")
    end
  end

  describe "#type" do
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

  describe "#save" do
    it 'saves a definition to an array' do
      program = Definition.new({:definition => "A planned series of future events, items, or PErformance", :type => 'noun'})
      program.save
      program2  = Definition.new({:definition => "arrange according to a plan or schedule.", :type => 'verb'})
      program2.save
      expect(@@all_definitions).to eq([program, program2])
    end
  end

  describe ".clear" do
    it 'clears the array of definitions' do
      program = Definition.new({:definition => "A planned series of future events, items, or PErformance", :type => 'noun'})
      program.save
      program2  = Definition.new({:definition => "arrange according to a plan or schedule.", :type => 'verb'})
      program2.save
      @@all_definitions.clear
      expect(@@all_definitions).to eq([])
    end
  end

end
