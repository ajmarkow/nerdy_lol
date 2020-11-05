class TopicsController < ApplicationController


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
    @discussions = Discussion.all
    render :show
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
  
  #  find by topics
  def findbytopic(id)
    @discussions = Discussion.findbytopic(id)
  end

  private

  def topic_params
    params.require(:topic).permit(:name, :topic_id)
  end
end