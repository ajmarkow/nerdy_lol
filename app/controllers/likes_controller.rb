class LikesController < ApplicationController
  before_action :find_post

  def create 
    @discussion = Discussion.find(params[:discussion_id])
    if current_user
      # @post = Post.find(params[:id])
      @post.likes.create(user_id: current_user.id)
      flash[:alert] = "You liked a post"
      # redirect_to discussion_post_path(@discussion, @post)
    else 
      flash[:alert] = "You must be signed in to like a post"
      #redirect_to discussion_path(@discussion)
    end
    redirect_to discussion_post_path(@discussion, @post)
  end

  private
  def find_post
    @post = Post.find(params[:post_id])
  end
end
