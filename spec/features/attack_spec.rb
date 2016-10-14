require "./app"

feature "Attack player 2" do

  before :each do
    sign_in_and_play
    click_button "Attack"
  end

  scenario "As player 1" do
    expect(page).to have_content("#{Game.game.players[Game.game.turn[1]].name} attacked #{Game.game.players[Game.game.turn[0]].name}!")
  end

  scenario "As player 1" do
    expect(page).to have_content("#{Game.game.players[Game.game.turn[0]].name} HITPOINTS = #{Player::DEFAULT_HITPOINTS-Player::DEFAULT_ATTACK}")
  end
end
