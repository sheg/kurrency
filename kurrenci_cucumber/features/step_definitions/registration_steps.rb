Given(/^I am on the homepage$/) do
  visit_page(HomePage)
end

When(/^I navigate to the registration page$/) do
  on_page(HomePage).sign_in
end

When(/^I fill out the registration form with random data$/) do
  on_page(RegistrationPage).register_new_user

end

Then(/^I should see "(.*?)"$/) do |arg1|
pending # express the regexp above with the code you wish you had
end
