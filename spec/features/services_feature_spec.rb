require 'rails_helper'

feature 'services' do
  scenario 'should display the informations on the services' do
    visit '/services'
    expect(page).to have_css 'p#services'
  end
end