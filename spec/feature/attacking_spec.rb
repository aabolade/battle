Capybara.default_driver = :selenium

RSpec.feature "Attacking P2", type: :feature do
  scenario "Player 1 should attack Player 2" do

    sign_in_and_play
    expect(page).not_to have_content "Pikachu attacked Charizard!"
    click_button("attack")

    expect(page).to have_content "Pikachu attacked Charizard!"

  end


end
