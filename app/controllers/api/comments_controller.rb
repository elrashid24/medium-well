class Api::CommentsController < ApplicationController

    def index
    @comments = Comment.all
    render '/api/comments/index'
  end

  def show
    @comment = Comment.find(params[:id])
    render '/api/comments/show'
  end

  def create
    
    @comment = Comment.new(comment_params)
    @comment.author_id = current_user.id
    @comment.publish_date = Time.now
    

    if @comment.save
      render '/api/comments/show'
    else
      render json: @comment.errors.full_messages, status: 422
    end
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update_attributes(comment_params)
      render 'api/comments/show'
    else
      render @comment.errors.full_meassages, status: 422
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    @comments = Comment.all
    render 'api/comments/index'
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :story_id)
  end
end

