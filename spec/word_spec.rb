require 'rspec'
require 'pry'
require 'word'
require 'definition'

describe Word do
  before do
    Word.clear
  end

  @@all_words = []

  describe "#word" do
    it 'returns an entered word and accounts for mixed case inputs' do
      test_word = Word.new({:word => 'ProGram'})
      expect(test_word.word).to eq('program')
    end
  end

  describe ".all" do
    it 'returns an empty array at first' do
      expect(Word.all).to eq([])
    end
  end

  describe "#save" do
    it 'saves a word to an array of words' do
      test_word = Word.new({:word => 'ProGram'})
      test_word.save
      test_word2 = Word.new({:word => 'refactor'})
      test_word2.save
      expect(@@all_words).to eq([test_word, test_word2])
    end
  end

  describe ".clear" do
    it 'clears all words from the array of saved words' do
      test_word = Word.new({:word => 'caffeine'})
      test_word.save
      test_word2 = Word.new({:word => 'espresso'})
      test_word2.save
      Word.clear
      expect(Word.all).to eq([])
    end
  end

  describe "#id" do
    it 'assigns an id to each word' do
      test_word = Word.new({:word => 'caffeine'})
      test_word.save
      test_word2 = Word.new({:word => 'espresso'})
      test_word2.save
      expect(test_word2.id).to eq(2)
    end
  end

  describe ".find" do
    it 'finds a word from a list of words based on an id number' do
      test_word = Word.new({:word => 'caffeine'})
      test_word.save
      test_word2 = Word.new({:word => 'espresso'})
      test_word2.save
      test_word3 = Word.new({:word => 'cortado'})
      test_word3.save
      expect(Word.find(2)).to eq(test_word2)
    end
  end

  describe "#delete" do
    it 'deletes a word from the list of words' do
      test_word = Word.new({:word => 'caffeine'})
      test_word.save
      test_word2 = Word.new({:word => 'espresso'})
      test_word2.save
      test_word3 = Word.new({:word => 'cortado'})
      test_word3.save
      test_word2.delete
      expect(@@all_words).to eq([test_word, test_word3])
    end
  end

  describe "add_definition" do
    it 'adds a definition to an array of definitions for a word' do
      test_word = Word.new({:word => 'program'})
      test_word.save
      program = Definition.new({:definition => "A planned series of future events, items, or PErformance", :type => 'noun'})
      program2  = Definition.new({:definition => "arrange according to a plan or schedule.", :type => 'verb'})
      test_word.add_definition(program)
      test_word.add_definition(program2)
      expect(test_word.definitions).to eq([program, program2])

    end
  end
end
