require 'rails_helper'

feature 'homepage' do
  scenario 'should display the links to other pages' do
    visit '/homepage'
    expect(page).to have_link 'Services'
    expect(page).to have_link 'Packages & Prices'
    expect(page).to have_link 'Gallery'
    expect(page).to have_link 'Contact'
  end

  scenario 'should display a carousel' do
    visit '/homepage'
    expect(page).to have_css '#myCarousel'
  end

  scenario 'when clicking on "services" I should be redirected to that page' do
    visit '/homepage'
    click_link 'Services'
    expect(current_path).to eq(services_path)
  end

    scenario 'when clicking on "packages & prices" I should be redirected to that page' do
    visit '/homepage'
    click_link 'Packages & Prices'
    expect(current_path).to eq(packages_and_prices_path)
  end
end