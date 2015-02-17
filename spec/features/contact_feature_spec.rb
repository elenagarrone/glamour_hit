require 'rails_helper'

feature 'contacts' do
  scenario 'should display the telephone number' do
    visit '/contact'
    expect(page).to have_content '07725011807'
  end
end