require './app'

feature 'players can enter names' do
  scenario 'and returns names on next screen' do
    sign_in_and_play
    expect(page).to have_content "Names: Rob & John"
  end
end

feature 'players can check eachothers points:' do
  scenario 'player 1 can check player 2s hit points' do
    sign_in_and_play
      expect(page).to have_content "John hit points: 1"
  end
end
