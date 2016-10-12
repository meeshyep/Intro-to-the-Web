require_relative "./app"

feature "Enter name" do
  scenario "User enters name" do
    visit ("/")

    fill_in :name_1, with: "Jimmy"
    fill_in :name_2, with: "Bob"

    click_button "Start"

    expect(page).to have_text("Jimmy vs Bob")
  end
end
