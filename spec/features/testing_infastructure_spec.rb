require './app.rb'

RSpec.feature "Home page", type: :feature do
  scenario "it welcomes a user to RPS" do
    visit "/"
    expect(page).to have_text "Welcome to the world sensational RPS. Please register your name below:"
  end
end
