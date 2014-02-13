class RsvpsController < ApplicationController
  
  def new
    @rsvp = Rsvp.new
  end
  
  def create
    @rsvp = Rsvp.new(params[:new])
    if @rsvp.save
      redirect_to root_path, notice: 'RSVP Sent. See you soon!!!'
    else
      render action: 'new'
    end
  end
  
end