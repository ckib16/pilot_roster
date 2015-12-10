require "rails_helper"

describe Pilot do
  it "INFO ONLY: 'lints' (validates) its factory - see /support/factory_girl.rb " do
  end

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:rank) }
  it { should validate_presence_of(:hours) }
  it { should validate_presence_of(:qualification) }
  it { should validate_presence_of(:commision_date) }
  it { should validate_presence_of(:adsc) }
  it { should validate_presence_of(:avatar_url) }

  # TODO:  Bug in shoulda-matchers, filed issue: https://github.com/thoughtbot/shoulda-matchers/issues/849#issuecomment-162898918
  # it { should validate_numericality_of(:hours).only_integer }
  # it { should validate_numericality_of(:hours).is_greater_than_or_equal_to(0) }

  # Kept these verbose tests because shoulda-matchers is returning an error for integer & grather than or equal to
  it "is invalid without hours inputed as an integer" do
    pilot = build(:pilot, hours: 0.1)
    pilot.valid?
    expect(pilot.errors[:hours]).to include("must be an integer")
  end

  it "is invalid without hours integer > 0" do
    pilot = build(:pilot, hours: -1)
    pilot.valid?
    expect(pilot.errors[:hours]).to include("must be greater than or equal to 0")
  end
end
