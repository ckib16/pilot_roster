Given /^I am a new, authenticated user$/ do
  email = 'testing@man.net'
  password = 'secretpass'
  User.new(email: email, password: password, password_confirmation: password).save!

  visit '/users/sign_in'
  fill_in "user_email", with: email
  fill_in "user_password", with: password
  click_button "Sign in"
end

def delete_user
  @user ||= User.where(email: @visitor[:email]).first
  @user.destroy unless @user.nil?
end

def find_user
  @user ||= User.where(email: 'testing@man.net').first
end

def sign_up
  delete_user
  visit '/users/sign_up'
  fill_in "user_name", with: 'Testy McTester'
  fill_in "user_email", with: 'testing@man.net'
  fill_in "user_password", with: 'secretpass'
  fill_in "user_password_confirmation", with: 'secretpass'
  click_button "Sign up"
  find_user
end
