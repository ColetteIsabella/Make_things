class TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def nsew
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
end
