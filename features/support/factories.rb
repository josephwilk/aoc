FactoryGirl.define do

  factory :booking do
    association :passenger, :factory => :passenger
    passport '123'
    eticket  '123'
    flight "1"
  end

  factory :passenger do
    first_name "Joseph"
    last_name  "Wilk"
    risk "low"
  end

end