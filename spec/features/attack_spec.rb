require "./app"

feature "Attack player 2" do
  scenario "As a player 1" do
    sign_in_and_play
    expect(page).to have_text("Jimmy attacked Bob")
  end
end
