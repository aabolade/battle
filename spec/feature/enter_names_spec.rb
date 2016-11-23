
Capybara.default_driver = :selenium

RSpec.feature "Battle Names", type: :feature do

  scenario "User enters two player names" do
    visit "/"

    fill_in('player1', with: 'Pikachu')
    fill_in('player2', with: 'Charizard')

    click_button('Submit')

    expect(page).to have_content('Pikachu vs. Charizard')
  end
end

RSpec.feature "Player 2's hit points", type: :feature do
  scenario "Show player 2's hit points" do
    visit "/play"

    expect(page).to have_content("Player 2 Score: #{100}")
  end
end
