class CommentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @pin = Pin.find(params[:pin_id])
    @comments = @pin.comments
  end

  def new
    @pin = Pin.find(params[:pin_id])
    @comment = @pin.comments.new
  end
  
  def create
    @pin = Pin.find(params[:pin_id])
    @comment = @pin.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      UserMailer.comment_notification(@comment, @pin.user).deliver
      redirect_to @pin, notice: "Comment posted."
    else
      render :new
    end
  end
  
  private
  
      # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:content)
    end
end