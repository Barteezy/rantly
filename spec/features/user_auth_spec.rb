require 'rails_helper'

feature 'user can got to the register page and register' do
  scenario 'user registers after visiting splash page' do

    visit '/'
    expect(page).to have_content "Rant.ly Join"

    click_on "Join"

    fill_in "Username", :with => "taquito"
    fill_in "Password", :with => "tacos"
    fill_in "First name", :with => "taco"
    fill_in "Last name", :with => "grande"

    fill_in "Bio", :with => "I'm spicy"

    choose('Daily')

    click_on "Register"



  end
end