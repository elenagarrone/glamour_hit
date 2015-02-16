require 'rails_helper'

feature 'packages and prices' do
  scenario 'should display the packages available' do
    visit '/packages_and_prices'
    expect(page).to have_content 'Deluxe'
    expect(page).to have_content 'Deluxe Pro'
  end
end