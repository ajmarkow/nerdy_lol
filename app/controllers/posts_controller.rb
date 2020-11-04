class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def new
    @discussion = Discussion.find(params[:discussion_id])
    @post = @discussion.posts.new
    render :new
  end

  def create
    @discussion = Discussion.find(params[:discussion_id])
    @post = @discussion.posts.new(post_params)
    if @post.save
      redirect_to discussion_path(@discussion)
    else
      render :new
    end
  end

  def show
    @discussion = Discussion.find(params[:discussion_id])
    @post = Post.find(params[:id])
    render :show
  end

  def edit
    @discussion = Discussion.find(params[:discussion_id])
    @post = Post.find(params[:id])
    render :edit
  end

  def update
    @post = Post.find(params[:id])
    @discussion = Discussion.find(params[:discussion_id])
    if @post.update(post_params)
      redirect_to discussion_path(@discussion)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to discussion_path(@post.discussion)
  end

  private
    def post_params
      params.require(:post).permit(:author, :content_body, :discussion_id)
    end
end