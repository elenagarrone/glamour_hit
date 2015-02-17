require 'rails_helper'

feature 'contacts' do
  scenario 'should display the telephone number' do
    visit '/contacts/new'
    expect(page).to have_content '07725011807'
  end

  scenario 'should display a form' do
    visit '/contacts/new'
    expect(page).to have_css 'form#new_contact'
  end
end