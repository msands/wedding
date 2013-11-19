class CommentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @commentable = Pin.find(params[:pin_id])
    @comments = @commentable.comments
  end

  def new
    @commentable = Pin.find(params[:pin_id])
    @comment = @commentable.comments.new
  end
  
  def create
    @commentable = Pin.find(params[:pin_id])
    @comment = @commentable.comments.new(comment_params)
    if @comment.save
      redirect_to @commentable, notice: "Comment posted."
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