class Word
  attr_reader :word
  @@all_words = []

 define_method(:initialize) do |attributes|
   @word = attributes.fetch(:word).downcase
 end

 define_singleton_method(:all) do
   @@all_words
 end

 define_method(:save) do
   @@all_words.push(self)
 end


end
