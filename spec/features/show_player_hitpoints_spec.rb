require "./app"

feature "View player 2 hitpoints" do
  scenario "As a player 1" do
    sign_in_and_play
    hitpoints = Player.new("test_name").hitpoints
    expect(page).to have_text("HITPOINTS = #{hitpoints}")
  end
end
