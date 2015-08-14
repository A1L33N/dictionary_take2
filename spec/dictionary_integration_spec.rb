require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the dictionary path', {type: :feature}) do
  it 'will take user inputed words and list the words' do
    visit('/')
    fill_in('new_word', with: 'cycle')
    click_button('Add Word')
    expect(page).to have_content('Your new word has been added!')
  end


end
