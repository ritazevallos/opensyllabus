class TopicsController < ApplicationController
  def show
    @topics = Topic.all
    @topic = Topic.friendly.find(params[:id])
    @syllabuses = @topic.syllabuses.paginate(page: params[:page], :per_page => 3)
  end

  def create
    @topic = Topic.new(params[topic_params])
    if @topic.save
      redirect_to @topic
    else
      render 'new'
    end
  end

  def new
    @topic = Topic.new
  end

  def destroy
    Topic.friendly.find(params[:id]).destroy
    flash[:success] = "Topic deleted."
    redirect_to root_url
  end

  def index
    @topics = Topic.all
  end

  def topic_params
    params.require(:topic).permit(:name)
  end
end
