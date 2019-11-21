require './lib/game'
require './lib/player'

describe Game do

  before(:each) do
    @player1 = double("Player Class")
    allow(@player1).to receive(:name).and_return "player1"
    allow(@player1).to receive(:hit_points).and_return 50
    allow(@player1).to receive(:reduce_points).with(10)

    @player2 = double("Player Class")
    allow(@player2).to receive(:name).and_return "player2"
    allow(@player2).to receive(:hit_points).and_return 50
    allow(@player2).to receive(:reduce_points).with(10)
  end

  it "accepts two players when created" do
    expect(Game).to respond_to(:new).with(2).arguments
  end

  it "can register an attack" do
    game = Game.new(@player1, @player2)
    expect(game.attack).to include("player2 was attacked!")
  end

  it ": Turn method switches between players" do
    game = Game.new(@player1, @player2)
    expect(game.switch_turn).to eq "player2"
    expect(game.switch_turn).to eq "player1"
  end

end
