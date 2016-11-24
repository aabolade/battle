RSpec.feature "Submitting name", :type => :feature do
  scenario "User enters name to play" do
    sign_in_and_play

    expect(page).to have_content("Player 1: Chris vs Player 2: Leke")
  end
end

RSpec.feature "Hitpoint check", :type => :feature do
  scenario "Can see other players hitpoints" do
    sign_in_and_play

    expect(page).to have_content("Leke HP: 100")
  end

  scenario "expect hitpoints to be reduced on attack" do
    sign_in_and_play
    click_button('attack')
    click_button('confirm')

    expect(page).to have_content("Leke HP: 90")
  end
end

RSpec.feature "ATTACK!", :type => :feature do
  scenario "Can attack player 2" do
    sign_in_and_play
    click_button('attack')

    expect(page).to have_content("Chris attacks Leke")
  end

  scenario "Switching over the attack screen" do
    sign_in_and_play
    click_button('attack')
    click_button('confirm')
    click_button('attack')
    expect(page).to have_content("Leke attacks Chris")
  end
end
