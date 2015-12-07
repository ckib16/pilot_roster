require "rails_helper"

describe Pilot do
  it "has a valid factory" do
    expect(build(:pilot)).to be_valid
  end

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:rank) }
  it { should validate_presence_of(:hours) }

  it "is invalid without an hours integer > 0" do
    pilot = build(:pilot, hours: -1)
    pilot.valid?
    expect(pilot.errors[:hours]).to include("must be greater than or equal to 0")
  end

  it "is invalid without an hours inputed as an integer" do
    pilot = build(:pilot, hours: "abc")
    pilot.valid?
    expect(pilot.errors[:hours]).to include("is not a number")
  end

  it { should validate_presence_of(:qualification) }
  it { should validate_presence_of(:commision_date) }
  it { should validate_presence_of(:adsc) }
  it { should validate_presence_of(:avatar_url)}
end
