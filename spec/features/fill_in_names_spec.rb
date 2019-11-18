require './app'

feature 'players can enter names' do
  scenario 'and returns names on next screen' do
    visit('/')
    fill_in "player1", with: "Rob"
    fill_in "player_2", with: "John"
    click_button "submit"
    expect(page).to have_content "Names: Rob & John"
  end

end
