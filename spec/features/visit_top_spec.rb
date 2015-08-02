require 'rails_helper'

RSpec.feature "Visit top", type: :feature, js: true do
  background do
    stub_request(:any, "api.github.com").
      to_return(
        body: "testtesttest",
        status: 200)
    stub_request(:any, "api.github.com/users/ken1flan/repos").
      to_return(
        body: "testtesttest repos",
        status: 200)
    stub_request(:any, "https://api.github.com/users/ken1flan/repos").
      to_return(
        body: "testtesttest https repos",
        status: 200)

    # WebMock.enable!
  end

  scenario "visit top" do
    puts "======="
    puts Net::HTTP.get("api.github.com", "/")
    puts "======="
    puts Net::HTTP.get("api.github.com", "/users/ken1flan/repos")
    puts "======="
    puts Net::HTTP.get(URI.parse("https://api.github.com/users/ken1flan/repos"))
    puts "======="

    visit root_path
    expect(page).to have_text "hello, world"
    # sleep(10)
    expect(page).to have_text "rspec_stub_api"
  end
end
