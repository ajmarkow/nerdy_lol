class TopicsController < ApplicationController
  before_action :except => [:index, :show] do
    redirect_to root_path, notice:"Only Latte Larry Can Add Topics. Stay out Mocha Joe." unless current_user && current_user.admin?
  end

  def index
    # Code for listing all reviews goes here.
    @topics = Topic.all
  end

  def new
    # Code for new review form goes here.
    @topic = Topic.new
  end

  def create
    # Code for creating a new review goes here.
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to topics_path
    else
      render :new
    end
  end

  def edit
    # Code for edit review form goes here.
    @topic = Topic.find(params[:id])
  end

  def show
    # Code for showing a single review goes here.
    @topic = Topic.find(params[:id])
  end

  def destroy
    # Code for deleting an review goes here.
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_path
  end

  def find(id)
    # Code for showing a single review goes here.
    @topic = Topic.find(id.to_i)

  end

  private

  def topic_params
    params.require(:topic).permit(:name, :topic_id)
  end
end