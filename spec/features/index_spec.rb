
describe 'index.erb' do

  feature "text on welcome page" do

    scenario "it welcomes a user to RPS" do
      visit "/"
      expect(page).to have_text "Welcome RPS World Championships"
    end

  end

  feature "Form input & buttons" do

    scenario "has prompt for player to enter name" do
      visit "/"
      expect(page).to have_text "Player 1 Enter Your Name:"
    end

    scenario "It has start game button" do
      visit "/"
      expect(page).to have_button('Start Game')
    end

    scenario "Player 1 name entry form exists" do
      visit "/"
      find_field("player_1")
    end

    scenario "Player 1 can enter their name" do
      visit "/"
      fill_in("player_1", with: 'catface')
      click_button('Start Game')
    end

  end

end
