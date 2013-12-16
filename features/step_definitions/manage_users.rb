Given(/^I have users named (.*)$/) do |names|
  names.split(',').each { |name| User.create(name: name, password: name, password_confirmation: name) }
end

When(/^I go to the list of users$/) do
  visit('/users')
end

Then(/^I should see "(.*?)"$/) do |names|
  names.split(',').each do |name|
    expect(page).to have_content(name)
  end
end

