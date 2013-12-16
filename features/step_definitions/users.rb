Given(/^the user "(.*?)" has an account$/) do |name|
  @user = User.create(name: name, password: "tiny", password_confirmation: "tiny")
end

When(/^he logs in$/) do
  login(@user.name, @user.password)
end

Then(/^he should see "(.*?)"$/) do |welcome_message|
  expect(page).to have_content(welcome_message)
end
