
Capybara.default_driver = :selenium

RSpec.feature "Battle Names", type: :feature do

  scenario "User enters two player names" do
    sign_in_and_play

    expect(page).to have_content('Pikachu vs. Charizard')
  end
end
