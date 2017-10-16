
def sign_in_and_play
  visit "/"
  fill_in 'player_1', with: 'waterbottle'
  click_button 'Start Game'
  # visit "/choice"
end
