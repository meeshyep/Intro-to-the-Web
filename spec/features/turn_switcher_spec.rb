require "./lib/game"
require "./lib/player"
require "./app"

describe "Switching turns" do
  scenario "Player 1 starts " do
    sign_in_and_play
    expect(page.text).to include("Jimmy's turn")
end

  scenario "Player 2's turn" do
    sign_in_and_play
    click_button "Attack"
    expect(page.text).to include("Bob's turn")
  end
end
