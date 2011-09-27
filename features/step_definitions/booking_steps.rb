Given /^I made the following bookings:$/ do |bookings|
  # table is a Cucumber::Ast::Table
  bookings.hashes.each do |hash|
    raise Exception "Ambigious use of I. More than two passengers! " if Passenger.count > 1
    hash['passenger'] = Passenger.first
    Booking.create!(hash)
  end
end