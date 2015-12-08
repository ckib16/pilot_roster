Given(/^there are several locations$/) do
  build(:location)
end

When(/^I am on the location page$/) do
  visit locations_path
end

Then(/^I should see all the locations displayed$/) do
  page.should have_content(Location)
end
