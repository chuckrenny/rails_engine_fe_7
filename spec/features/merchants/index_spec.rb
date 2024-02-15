require 'rails_helper' 

RSpec.describe 'Merchant Index', type: :feature do
  # User Story - Merchants
  # As a visitor,
  # When I visit '/merchants'
  # I should see a list of merchants by name
  # and when I click the merchant's name
  # I should be on page '/merchants/:id'
  # And I should see a list of items that merchant sells.

  it 'visits merchants index page and can see a list of merchants as links' do
    VCR.use_cassette('merchants_index') do
      visit merchants_path

      expect(page).to have_link('Schroeder-Jerde')
      expect(page).to have_link('Klein, Rempel and Jones')
      expect(page).to have_link('Willms and Sons')
    end
  end

  it 'visits merchants index page and can click a merchant name to be redirected to merchant show page and displays all items' do
    VCR.use_cassette('merchants_index') do
      visit merchants_path
    end

    VCR.use_cassette('merchant_show_all_items') do
      click_link('Willms and Sons')

      expect(current_path).to eq(merchant_path(id: 3))
      expect(page).to have_content('Item Enim Error')
      expect(page).to have_content('775.96')
    end
  end
end