feature 'Choosing Rock' do
  scenario 'player chooses rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Rock option chosen'
  end
end

feature 'Choosing Paper' do
  scenario 'player chooses paper' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'paper option chosen'
  end
end

feature 'Choosing Scissors' do
  scenario 'player chooses scissors' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Scissors option chosen'
  end
end
