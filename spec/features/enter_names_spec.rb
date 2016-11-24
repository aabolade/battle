RSpec.feature "Submitting name", :type => :feature do
  scenario "user enters name to play" do
    visit "/"

    fill_in "P1_name", :with => "Chris"
    fill_in "P2_name", :with => "Leke"
    click_button('submit')

    expect(page).to have_content("Player 1: Chris, Player 2: Leke")
  end
end
