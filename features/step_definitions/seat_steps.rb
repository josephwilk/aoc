When /^I pick my seat "([^"]*)"$/ do |seat_id|
  save_and_open_page
  fill_in 'seat', :with => seat_id
  click_button('submit')
end
