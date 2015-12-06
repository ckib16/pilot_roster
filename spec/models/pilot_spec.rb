require "rails_helper"

describe Pilot do
  it "has a valid factory" do
    expect(build(:pilot)).to be_valid
  end

  it "is invalid without a name" do
    pilot = build(:pilot, name: nil)
    pilot.valid?
    expect(pilot.errors[:name]).to include("can't be blank")
  end

  it "is invalid without a rank" do
    pilot = build(:pilot, rank: nil)
    pilot.valid?
    expect(pilot.errors[:rank]).to include("can't be blank")
  end

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

  it "is invalid without a qualification" do
    pilot = build(:pilot, qualification: nil)
    pilot.valid?
    expect(pilot.errors[:qualification]).to include("can't be blank")
  end

  it "is invalid without a commision date" do
    pilot = build(:pilot, commision_date: nil)
    pilot.valid?
    expect(pilot.errors[:commision_date]).to include("can't be blank")
  end

  it "is invalid without an adsc" do
    pilot = build(:pilot, adsc: nil)
    pilot.valid?
    expect(pilot.errors[:adsc]).to include("can't be blank")
  end

  it "is invalid without an avatar" do
    pilot = build(:pilot, avatar_url: nil)
    pilot.valid?
    expect(pilot.errors[:avatar_url]).to include("can't be blank")
  end
end
