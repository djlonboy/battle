require './lib/player'

describe Player do
  it "can return the player's name" do
    player1 = Player.new("Rob", 50)
    expect(player1.name).to eq "Rob"
  end

  it "- attack reduces hit points by 10" do
    player1 = Player.new("Rob", 50) do
    player1.attack
    expect player1.hit_points to eq 40
    end
  end

end
