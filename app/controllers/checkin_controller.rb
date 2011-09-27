class CheckinController < ApplicationController

  def index
  end

  def airline
    @airline = params[:airline]
    render :details
  end

  def seat
    unless params[:eticket] || params[:passport]
      @errors = "Please enter a eticket or passport number"
      render :details
      return
    end
    
    if params[:eticket] && !params[:eticket].empty?
      booking = Booking.find_by_eticket(params[:eticket])
    elsif params[:passport] && !params[:passport].empty?
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
    unless params[:seat]
      @errors = "Please enter a seat"
      render :seat
      return
    end
    checkin = Checkin.create!(:airline => params[:airline],
                              :seat    => params[:seat],
                              :flight  => params[:flight],
                              :passenger => params[:passenger])
  end

end
