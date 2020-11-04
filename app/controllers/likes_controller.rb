class LikesController < ApplicationController
  before_action :find_post

  def create 
    @discussion = Discussion.find(params[:discussion_id])
    @post.likes.create(user_id: current_user.id)
    redirect_to discussion_post_path(@discussion, @post)
  end

  private
  def find_post
    @post = Post.find(params[:post_id])
  end
end
