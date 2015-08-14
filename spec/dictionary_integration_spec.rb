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

describe('the word path') do
  it 'will add a user inputed definition to a word info page' do
    visit('/word_info/:id')
    fill_in('new_definition', with: 'ride a bicycle')
    click_button('Add Definition')
    expect(page).to have_content('ride a bicyle')
  end
end
