require 'rails_helper'

describe Location do
  it 'has a valid factory' do
    expect(build(:location)).to be_valid
  end

  it { should validate_presence_of(:base) }
  it { should validate_presence_of(:unit) }
  it { should validate_presence_of(:country) }
  it { should validate_presence_of(:pascode) }
  it { should validate_presence_of(:billets) }
  it { should validate_numericality_of(:billets).is_greater_than_or_equal_to(0) }
  it { should validate_numericality_of(:billets).only_integer }

  # Kept because shoulda-matchers is returning an error for integer
  it "is invalid without billets inputed as an integer" do
    pilot = build(:location, billets: 0.1)
    pilot.valid?
    expect(pilot.errors[:billets]).to include("must be an integer")
  end

  it { should validate_presence_of(:emblem_url) }
end
