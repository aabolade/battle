
Capybara.default_driver = :selenium

RSpec.feature "Battle Names", type: :feature do

  scenario "User enters two player names" do
    sign_in_and_play

    expect(page).to have_content('Pikachu vs. Charizard')
  end
end

RSpec.feature "Display hit points", type: :feature do
  scenario "Show player 2's hit points" do

    sign_in_and_play

    expect(page).to have_content("Charizard: #{100}HP")
  end
end


RSpec.feature "Attacking P2", type: :feature do
  scenario "Player 1 should attack Player 2" do

    sign_in_and_play
    expect(page).not_to have_content "Pikachu attacked Charizard!"
    click_button("attack")

    expect(page).to have_content "Pikachu attacked Charizard!"

  end

  scenario "Player 2's health should decrease by 10HP" do
    sign_in_and_play
    click_button("attack")
    click_button("proceed")
    expect(page).to have_content("Charizard: #{90}HP")


  end

end
