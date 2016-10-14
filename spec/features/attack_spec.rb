require "./app"

feature "Attack player 2" do

  before :each do
    sign_in_and_play
    click_button "Attack"
  end

  scenario "As player 1" do
    expect(page).to have_content("Jimmy attacked Bob")
  end

  scenario "As player 1" do
    expect(page).to have_content("HITPOINTS = 90")
  end
end
