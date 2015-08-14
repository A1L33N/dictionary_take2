require 'rspec'
require 'pry'
require 'word'

describe Word do

  describe "#word" do
    it 'returns an entered word and accounts for mixed case inputs' do
      new_word = Word.new({:word => 'ProGram'})
      expect(new_word.word).to eq('program')
    end
  end

  describe ".all" do
    it 'returns an empty array at first' do
      expect Word.all.to eq []
    end
  end

end
