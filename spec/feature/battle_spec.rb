require 'capybara/dsl'
require 'selenium-webdriver'
include Capybara::DSL

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
