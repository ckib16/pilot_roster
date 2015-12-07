require "rails_helper"

describe Pilot do
  it "has a valid factory" do
    expect(build(:pilot)).to be_valid
  end

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:rank) }
  it { should validate_presence_of(:hours) }
  it { should validate_numericality_of(:hours).only_integer }
  it { should validate_numericality_of(:hours).is_greater_than_or_equal_to(0) }

  # Kept because shoulda-matchers is returning an error for integer
  it "is invalid without an hours inputed as an integer" do
    pilot = build(:pilot, hours: 0.1)
    pilot.valid?
    expect(pilot.errors[:hours]).to include("must be an integer")
  end

  it { should validate_presence_of(:qualification) }
  it { should validate_presence_of(:commision_date) }
  it { should validate_presence_of(:adsc) }
  it { should validate_presence_of(:avatar_url)}
end
