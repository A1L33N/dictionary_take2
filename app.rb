require('sinatra')
require('sinatra/reloader')
require('./lib/definition')
require('./lib/word')
require('pry')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

post('/') do
  @new_word = Word.new({:word => params.fetch('new_word')})
  @new_word.save
  erb(:word_success)
end

get('/clear_words') do
  Word.clear
  erb(:index)
end

get('/word_info/:id') do
  @word = Word.find(params.fetch('id').to_i)
  erb(:word_info)
end
