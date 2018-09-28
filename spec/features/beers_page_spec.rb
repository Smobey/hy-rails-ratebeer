require 'rails_helper'

include Helpers

describe "Beers page" do
  let!(:brewery) { FactoryBot.create :brewery, name:"Koff" }
  let!(:user) { FactoryBot.create :user }

  before :each do
    sign_in(username:"Pekka", password:"Foobar1")
  end

  it "an error is reported when a beer with no name is being created" do
    visit new_beer_path
    expect{
      click_button "Create Beer"
    }.not_to change{Rating.count}.from(0)
    expect(page).to have_content "Name is too short"
  end
end