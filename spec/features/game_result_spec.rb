require './app'

describe 'game_result.erb' do

  before do
    sign_in_and_play
    click_button('Paper')
  end

 feature "game_result page" do

  scenario "it says hi" do
    expect(page).to have_text "hii"
  end

end

end
