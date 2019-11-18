def sign_in_and_play
  visit('/')
  fill_in "player1", with: "Rob"
  fill_in "player2", with: "John"
  click_button "submit"
end
