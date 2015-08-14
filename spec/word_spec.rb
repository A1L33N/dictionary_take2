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

end
