require './app'

describe 'game_result.erb' do

  before do
    sign_in_and_play
    click_button('Paper')
  end

  feature "game_result page" do

    scenario "The computer chose Rock" do
      expect(page).to have_text "The Computer chose Rock"
    end

  end

end
