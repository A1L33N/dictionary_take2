require 'rspec'
require 'pry'
require 'word'

describe Word do
  before do
    Word.clear
  end

  describe "#word" do
    it 'returns an entered word and accounts for mixed case inputs' do
      new_word = Word.new({:word => 'ProGram'})
      expect(new_word.word).to eq('program')
    end
  end

  describe ".all" do
    it 'returns an empty array at first' do
      expect(Word.all).to eq([])
    end
  end

  describe "#save" do
    it 'saves a word to an array of words' do
      new_word = Word.new({:word => 'ProGram'})
      new_word.save
      new_word2 = Word.new({:word => 'refactor'})
      new_word2.save
      expect(Word.all).to eq([new_word, new_word2])
    end
  end

  describe ".clear" do
    it 'clears all words from the array of saved words' do
      new_word = Word.new({:word => 'caffeine'})
      new_word.save
      new_word2 = Word.new({:word => 'espresso'})
      new_word2.save
      Word.clear
      expect(Word.all).to eq([])
    end
  end

  describe "#id" do
    it 'assigns an id to each word' do
      new_word = Word.new({:word => 'caffeine'})
      new_word.save
      new_word2 = Word.new({:word => 'espresso'})
      new_word2.save
      expect(new_word2.id).to eq(2)
    end
  end

  describe ".find" do
    it 'finds a word from a list of words based on an id number' do
      new_word = Word.new({:word => 'caffeine'})
      new_word.save
      new_word2 = Word.new({:word => 'espresso'})
      new_word2.save
      new_word3 = Word.new({:word => 'cortado'})
      new_word3.save
      expect(Word.find(2)).to eq(new_word2)
    end
  end

end
