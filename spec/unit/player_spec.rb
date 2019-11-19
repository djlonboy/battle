require './lib/player'

describe Player do
  it "can return the player's name" do
    player1 = Player.new("Rob")
    expect(player1.name).to eq "Rob"
  end
end
