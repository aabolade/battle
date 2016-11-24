def sign_in_and_play
  visit "/"

  fill_in "P1_name", :with => "Chris"
  fill_in "P2_name", :with => "Leke"
  click_button('submit')
end
