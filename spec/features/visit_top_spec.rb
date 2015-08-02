require 'rails_helper'

RSpec.feature "Visit top", type: :feature, js: true do
  scenario "visit top" do
    visit root_path
    expect(page).to have_text "hello, world"
    sleep(10)
    expect(page).to have_text "rspec_stub_api"
  end
end
