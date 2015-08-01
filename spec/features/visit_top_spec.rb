require 'rails_helper'

RSpec.feature "Visit top", type: :feature do
  scenario "visit top" do
    visit root_path
    expect(page).to have_text "hello, world"
  end
end
