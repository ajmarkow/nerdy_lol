class DiscussionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  # before_action :only => [:new, :edit] do
  #   redirect_to new_user_session_path unless current_user && current_user.admin
  # end

  # def require_admin
  #   if !current_user.admin?
  #         redirect_to benefits_path
  #   end
  # end

# landing page, show all discussions
  def index
    @discussions = Discussion.all
   # @most_recent = Discussion.most_recent
    # if Discussion.most_reviewed.first
    #   @most_reviewed = Discussion.most_reviewed.first.name
    # end
    render :index
  end

# form for adding new discussion
  def new
    @discussion = Discussion.new
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

# delete a discussion
  def destroy
    @discussion = Discussion.find(params[:id])
    # if current_user.admin?
    @discussion.destroy
    # end
    redirect_to discussions_path
  end

  private
    def discussion_params
      params.require(:discussion).permit(:title,:topic,:content_body,:likes)
    end

end