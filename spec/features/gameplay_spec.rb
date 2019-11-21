require './app'

feature 'players can enter names' do
  scenario 'and returns names on next screen' do
    sign_in_and_play
    expect(page).to have_content "Names: Rob & John"
  end
end

feature 'players can check eachothers points:' do
  scenario 'Player 1 can check player 2s hit points' do
    sign_in_and_play
      expect(page).to have_content "John hit points: 50"
  end
end

feature 'players can attack one another:' do
  scenario 'Player 1 can attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "John was attacked!"
  end
end
