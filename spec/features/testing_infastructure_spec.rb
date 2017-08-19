require './app.rb'

RSpec.feature "Home page", type: :feature do
  scenario "it welcomes a user to RPS" do
    visit "/"
    expect(page).to have_text "Welcome to the world sensational RPS. Please register your name below:"
  end
end

feature "Welcome player page", type: :feature do
  scenario "it allows a user to submit their name and then it displays the name" do
    sign_in_and_play
    expect(page).to have_text 'Welcome waterbottle'
    save_and_open_page
  end

end
