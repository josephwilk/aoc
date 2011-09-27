class Passenger < ActiveRecord::Base
  has_many :booking

  def risky?
    self.risk == 'high'
  end

end
