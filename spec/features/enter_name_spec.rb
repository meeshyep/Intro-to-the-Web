require "./app"

feature "Enter name" do
  before :each do
    sign_in_and_play
  end

  scenario "Player 1 enters name" do
    expect(page).to have_content("#{$game.player_1.name}")
  end

  scenario "Player 2 enters name" do
    expect(page).to have_content("#{$game.player_2.name}")
  end

end
