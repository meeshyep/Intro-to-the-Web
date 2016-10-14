require "./app"
require "./lib/game"
require "./spec/spec_helper.rb"

# describe Game do
#
# subject(:game) {described_class.new(player_1, player_2)}

# let(:player_1) {double :player_1}
# let(:player_2) {double :player_2}

feature "Enter name" do
  before :each do
    sign_in_and_play
  end

  it "Player 1 enters name" do
    expect(page).to have_text "Jimmy"
  end

  it "Player 2 enters name" do
    expect(page).to have_text "Bob"
  end
end
