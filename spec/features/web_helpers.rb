
def sign_in_and_play 
  visit "/"
  fill_in('name', with: 'waterbottle')
  click_button('Submit')
end
