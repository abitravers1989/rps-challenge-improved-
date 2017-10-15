
describe 'choice.erb' do

  before do
    sign_in_and_play
  end

  feature "text contains the players name" do

    scenario 'The choice page displays the players name' do
      visit "/choice"
      expect(page).to have_text 'waterbottle'
    end

  end

  # feature "Form input & buttons" do
  #
  #   scenario "has choice buttons" do
  #     expect { find_button('Rock') }.to_not raise_error
  #   end
  #
  # end

end
