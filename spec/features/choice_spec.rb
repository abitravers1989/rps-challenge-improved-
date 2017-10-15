
feature 'choice.erb' do

  scenario 'The choice page displays the players name' do
     sign_in_and_play
     visit "/choice"
     expect(page).to have_text 'waterbottle'
  end

end
