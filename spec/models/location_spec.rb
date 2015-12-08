require 'rails_helper'

describe Location do
  # TODO: not needed if lint factories?
  # it 'has a valid factory' do
  #   expect(build(:location)).to be_valid
  # end

  it { should validate_presence_of(:base) }
  it { should validate_presence_of(:unit) }
  it { should validate_presence_of(:country) }
  it { should validate_presence_of(:pascode) }
  it { should validate_presence_of(:billets) }
  it { should validate_presence_of(:emblem_url) }

  # TODO:  Bug in shoulda-matchers, filed issue: https://github.com/thoughtbot/shoulda-matchers/issues/849#issuecomment-162898918
  # it { should validate_numericality_of(:billets).is_greater_than_or_equal_to(0) }
  # it { should validate_numericality_of(:billets).only_integer }

  # Kept these verbose tests because shoulda-matchers is returning an error for integer & grather than or equal to
  it "is invalid without billets inputed as an integer" do
    location = build(:location, billets: 0.1)
    location.valid?
    expect(location.errors[:billets]).to include("must be an integer")
  end

  it "is invalid without billets integer > 0" do
    location = build(:location, billets: -1)
    location.valid?
    expect(location.errors[:billets]).to include("must be greater than or equal to 0")
  end
end
