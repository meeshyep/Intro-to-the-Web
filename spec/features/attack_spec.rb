require "./app"

feature "Attack player 2" do

  before :each do
    sign_in_and_play
    click_button "Attack"
  end

  scenario "As player 1" do
    expect(page).to have_text("#{$game.player_1.name} attacked #{$game.player_2.name}")
  end

  scenario "As player 1" do
    expect(page).to have_text("#{$game.player_2.hitpoints}")
  end

end
