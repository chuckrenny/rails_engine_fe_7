require 'rails_helper' 

RSpec.describe Merchants, type: :feature do
  # User Story - Merchants
  # As a visitor,
  # When I visit '/merchants'
  # I should see a list of merchants by name
  # and when I click the merchant's name
  # I should be on page '/merchants/:id'
  # And I should see a list of items that merchant sells.

  before :each do
    merchant1 
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "unit_price"
    t.bigint "merchant_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["merchant_id"], name: "index_items_on_merchant_id"
  end

  create_table "merchants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end
end