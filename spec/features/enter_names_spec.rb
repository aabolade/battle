RSpec.feature "Submitting name", :type => :feature do
  scenario "User enters name to play" do
    sign_in_and_play

    expect(page).to have_content("Player 1: Chris, Player 2: Leke")
  end
end

RSpec.feature "Hitpoint check", :type => :feature do
  scenario "Can see other players hitpoints" do
    sign_in_and_play

    expect(page).to have_content("Player 2 HP: 100")
  end
end
