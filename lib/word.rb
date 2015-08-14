class Word
  attr_reader :word, :id
  @@all_words = []

 define_method(:initialize) do |attributes|
   @word = attributes.fetch(:word).downcase
   @id = @@all_words.length.+(1)
 end

 define_singleton_method(:all) do
   @@all_words
 end

 define_method(:save) do
   @@all_words.push(self)
 end

 define_singleton_method(:clear) do
   @@all_words = []
 end

 define_singleton_method(:find) do |id_number|
   found_word = nil
   @@all_words.each() do |word|
     if id_number.eql?((word.id).to_i)
     found_word = word
     end
   end
   found_word
  end

  define_method(:delete) do
    @@all_words.delete(self)
  end




end
