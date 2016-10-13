require 'player'

describe Player do
  subject(:player) {described_class.new}
  it "returns the name of the player 1" do
    player1 = Player.new("Bob")
    expect(player1.name).to eq("Bob")
  end
  it "returns the name of the player 2" do
    player2 = Player.new("Steve")
    expect(player2.name).to eq("Steve")
  end
end
