require 'rails_helper'

describe Location do
  it 'has a valid factory' do
    expect(build(:location)).to be_valid
  end

  it 'is invalid without a base name' do
    location = build(:location, base: nil)
    location.valid?
    expect(location.errors[:base]).to include "can't be blank"
  end

  it 'is invalid without a unit' do
    location = build(:location, unit: nil)
    location.valid?
    expect(location.errors[:unit]).to include "can't be blank"
  end

  it 'is invalid without a country' do
    location = build(:location, country: nil)
    location.valid?
    expect(location.errors[:country]).to include "can't be blank"
  end

  it 'is invalid without a state' do
    location = build(:location, state: nil)
    location.valid?
    expect(location.errors[:state]).to include "can't be blank"
  end

  it 'is invalid without an oconus  designation (boolean)' do
    location = build(:location, oconus: nil)
    location.valid?
    expect(location.errors[:oconus]).to include "is not included in the list"
  end

  it 'is invalid without a PASCODE' do
    location = build(:location, pascode: nil)
    location.valid?
    expect(location.errors[:pascode]).to include "can't be blank"
  end

  it 'is invalid without an integer of billets' do
    location = build(:location, billets: nil)
    location.valid?
    expect(location.errors[:billets]).to include "can't be blank"
  end

  it 'is invalid with a negative integer in billets' do
    location = build(:location, billets: -1)
    location.valid?
    expect(location.errors[:billets]).to include "must be greater than or equal to 0"
  end

  it 'is invalid without an emblem url' do
    location = build(:location, emblem_url: nil)
    location.valid?
    expect(location.errors[:emblem_url]).to include "can't be blank"
  end
end
