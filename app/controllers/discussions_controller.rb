class DiscussionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  # landing page, show all discussions
  def index
    @discussions = Discussion.all
    render :index
  end

  # form for adding new discussion
  def new
    @discussion = Discussion.new
    topics = Topic.all
    render :new
  end

  # create a new discussion
  def create
    @discussion = Discussion.new(discussion_params)
    if @discussion.save
      redirect_to discussions_path
    else
      render :new
    end
  end

  # Update a discussion
  def edit
    @discussion = Discussion.find(params[:id])
    render :edit
  end

  # show a single discussion
  def show
    @discussion = Discussion.find(params[:id])
    render :show
  end

  # Update a discussion
  def update
    @discussion = Discussion.find(params[:id])
    if @discussion.update(discussion_params)
      redirect_to discussions_path
    else
      render :edit
    end
  end

  #  find by topics

  # delete a discussion
  def destroy
    @discussion = Discussion.find(params[:id])
    if current_user && current_user.is_admin?
      @discussion.destroy
      flash[:alert] = 'You deleted a discussion'
    else
      flash[:alert] = 'Only admin can delete discussions'
    end
    redirect_to discussions_path
  end

  private

  def discussion_params
    params.require(:discussion).permit(:title, :topic, :content_body, :likes)
  end
end
