require './lib/game'
require './lib/player'

describe Game do

  it "accepts two players when created" do
    expect(Game).to respond_to(:new).with(2).arguments
  end

  it "can register an attack" do
    player1 = Player.new("Rob")
    game = Game.new(player1, :player2)
    expect(game.attack(player1)).to include("Rob was attacked!")
  end


end
