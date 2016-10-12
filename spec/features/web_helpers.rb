def sign_in_and_play
  visit ("/")

  fill_in :name_1, with: "Jimmy"
  fill_in :name_2, with: "Bob"

  click_button "Start"
end
