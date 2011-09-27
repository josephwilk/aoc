FactoryGirl.define do

  factory :booking do
    flight "1"
    airline "ba"
  end

  factory :passenger do
    first_name "Joseph"
    last_name  "Wilk"
    risk "low"
  end

end