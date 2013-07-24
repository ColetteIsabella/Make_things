class TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

def create
  @topic = Topic.new(params[:topic])
  if @topic.save
    flash[:notice] = "Topic has been created."
    redirect_to @project
  else
    # nothing, yet
  end
end

  def show
    @topics = Topic.find(params[:id])
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.update_attributes(params[:topic])
    flash[:notice] = "Topic has been updated."
    redirect_to @topic
  end
end
