class CheckinController < ApplicationController

  def index
  end

  def airline
    @airline = params[:airline]
    render :details
  end

  def seat
    if params[:eticket]
      booking = Booking.find_by_eticket(params[:eticket])
    elsif params[:passport]
      booking = Booking.find_by_passport(params[:passport])
    end
    
    unless booking
      @errors = "Sorry we could not find that user"
      render :index
      return
    end

    @airline = params[:airline]
    @passenger = booking.passenger
  end

  def finish
    puts params.inspect
    checkin = Checkin.create!(:airline => params[:airline],
                              :seat    => params[:seat],
                              :flight  => params[:flight],
                              :passenger => params[:passenger])
  end

end
