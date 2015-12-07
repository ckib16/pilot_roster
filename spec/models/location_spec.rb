require 'rails_helper'

describe Location do
  it 'has a valid factory' do
    expect(build(:location)).to be_valid
  end

  it { should validate_presence_of(:base) }
  it { should validate_presence_of(:unit) }
  it { should validate_presence_of(:country) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:pascode) }
  it { should validate_presence_of(:billets) }
  it { should validate_presence_of(:emblem_url) }

  it 'is invalid without an oconus  designation (boolean)' do
    location = build(:location, oconus: nil)
    location.valid?
    expect(location.errors[:oconus]).to include "is not included in the list"
  end

  it 'is invalid with a negative integer in billets' do
    location = build(:location, billets: -1)
    location.valid?
    expect(location.errors[:billets]).to include "must be greater than or equal to 0"
  end
end
