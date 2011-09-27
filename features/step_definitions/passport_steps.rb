When /^I enter my Passport number "([^"]*)"$/ do |passport_id|
  fill_in 'passport', :with => passport_id
  click_button('submit')
end
