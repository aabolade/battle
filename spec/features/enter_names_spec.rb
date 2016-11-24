RSpec.feature "Submitting name", :type => :feature do
  scenario "User enters name to play" do
    visit "/"

    fill_in "P1_name", :with => "Chris"
    fill_in "P2_name", :with => "Leke"
    click_button('submit')

    expect(page).to have_content("Player 1: Chris, Player 2: Leke")
  end
end

RSpec.feature "Hitpoint check", :type => :feature do
  scenario "Can see other players hitpoints" do
    visit "/"

    fill_in "P1_name", :with => "Chris"
    fill_in "P2_name", :with => "Leke"
    click_button('submit')

    expect(page).to have_content("Player 2 HP: 100")
  end
end
