require "./app"

feature "Attack player 2" do
  scenario "As a player 1" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_text("#{$player_1.name} attacked #{$player_2.name}")
  end
end
