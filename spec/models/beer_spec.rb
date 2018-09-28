require 'rails_helper'

RSpec.describe Beer, type: :model do
  it "can be saved with a name, style and a brewery" do
    brewery = Brewery.create name:"testbrewery", year:2000
    beer = Beer.create name:"testbeer", style:"Lager", brewery:brewery

    expect(beer).to be_valid
    expect(Beer.count).to eq(1)
  end

  it "is not saved without a name" do
    brewery = Brewery.create name:"testbrewery", year:2000
    beer = Beer.create style:"Lager", brewery:brewery

    expect(beer).not_to be_valid
    expect(Beer.count).to eq(0)
  end

  it "is not saved without a style" do
    brewery = Brewery.create name:"testbrewery", year:2000
    beer = Beer.create name:"testbeer", brewery:brewery

    expect(beer).not_to be_valid
    expect(Beer.count).to eq(0)
  end
end
