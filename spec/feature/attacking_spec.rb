Capybara.default_driver = :selenium

RSpec.feature "Attacking P2", type: :feature do
  scenario "Player 1 should attack Player 2" do

    sign_in_and_play

    click_button("Attack!")

    expect(page).to have_content "#{@p1name} attacked #{@p2name}!"

  end
end
