class SubtopicsController < ApplicationController
  before_action :except => [:index, :show] do
    redirect_to root_path, notice:"Only Latte Larry Can Add Subtopics. Stay out Mocha Joe." unless current_user && current_user.admin?
  end

  def index
    # Code for listing all reviews goes here.
    @subtopics = Subtopic.all
  end

  def new
    # Code for new review form goes here.
    @subtopic = Subtopic.new
  end

  def create
    # Code for creating a new review goes here.
    @subtopic = Subtopic.new(subtopic_params)
    if @subtopic.save
      redirect_to subtopics_path
    else
      render :new
    end
  end

  def edit
    # Code for edit review form goes here.
    @subtopic = Subtopic.find(params[:id])
  end

  def show
    # Code for showing a single review goes here.
    @subtopic = Subtopic.find(params[:id])
  end

  def destroy
    # Code for deleting an review goes here.
    @subtopic = Subtopic.find(params[:id])
    @subtopic.destroy
    redirect_to subtopics_path
  end

  def find(id)
    # Code for showing a single review goes here.
    @subtopic = Subtopic.find(id.to_i)

  end

  private

  def subtopic_params
    params.require(:subtopic).permit(:name, :subtopic_id)
  end
end