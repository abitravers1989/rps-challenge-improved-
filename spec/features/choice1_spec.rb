
feature 'choice1.erb' do

  scenario 'Player 1s name is shown' do
     sign_in_and_play
     expect(page).to have_text 'waterbottle'
  end

end
