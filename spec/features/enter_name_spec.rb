require "./app"

feature "Enter name" do
  scenario "User enters name" do
    sign_in_and_play
    expect(page).to have_text("Jimmy HITPOINTS = 100 vs Bob HITPOINTS = 100")
  end
end
