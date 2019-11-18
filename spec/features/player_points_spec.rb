require './app'

feature 'players can check eachothers points:' do
  scenario 'player 1 can check player 2s hit points' do
    visit('/player2points')
    expect(page).to have_content "Player 2 hit points: 1"
  end
end
