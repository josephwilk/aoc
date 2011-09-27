Given /^I am registered Passenger:$/ do |table|
  table.hashes.each do |hash|
    Passenger.create!(hash)
  end
end