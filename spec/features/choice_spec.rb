require './app'
require 'spec_helper'

RSpec.feature 'choice.erb', type: :feature do

  # feature "text contains the players name" do

  scenario 'The choice page displays the players name' do
    visit "/"
    fill_in 'player_1', with: 'waterbottle'
    click_on('Start Game')
    expect(page).to have_text 'waterbottle'
  end

end

feature "Form input & buttons" do

  scenario "has choice buttons" do
    p page
    expect { find_button('Rock') }.to_not raise_error
  end

end
