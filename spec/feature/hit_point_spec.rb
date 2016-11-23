Capybara.default_driver = :selenium

RSpec.feature "Display hit points", type: :feature do
  scenario "Show player 2's hit points" do

    sign_in_and_play

    expect(page).to have_content("Charizard: #{100}HP")
  end
end
