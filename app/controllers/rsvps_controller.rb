class RsvpsController < ApplicationController
  
  def new
    @rsvp = Rsvp.new
  end
  
  def create
    @rsvp = Rsvp.new(rsvp_params)
    if @rsvp.save
      UserMailer.rsvp_confirmation(@rsvp).deliver
      redirect_to root_path, notice: 'RSVP Sent! See you soon!!!'
    else
      render action: 'new'
    end
  end
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def rsvp_params
      params.require(:rsvp).permit(:guest_attending, :guest_note, guests_attributes: [:id,  :guest_name, :menu_option])
    end
  
end
