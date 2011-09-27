class Booking < ActiveRecord::Base
  belongs_to :passenger

  validates_uniqueness_of :passport, :message => "must be unique"
  validates_uniqueness_of :eticket, :message => "must be unique"
end
