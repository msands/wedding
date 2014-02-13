class RsvpController < ApplicationController
  
  def new
    @rsvp = Rsvp.new
  end
  
  def create
    @rsvp = Rsvp.new(params[:new])
    if @rsvp.save
      redirect_to @rsvp, notice: "RSVP sent"
    else
      render action: 'new'
    end
  end
end
