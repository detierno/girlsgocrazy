class TopicsController < ApplicationController
  before_filter :find_event

  def index
    @topics = @event.topics.all
    respond_with(@topics)
  end

  def show
    @topic = @event.topics.find(params[:id])
    respond_with(@topic)
  end

  def new
    @topic = @event.topics.new
    respond_with(@topic)
  end

  def edit
    @topic = @event.topics.find(params[:id])
  end

  def create
    @topic = @event.topics.new(params[:topic])
    @topic.save
    respond_with(@topic)
  end

  def update
    @topic = @event.topics.find(params[:id])
    @topic.update_attributes(params[:topic])
    respond_with(@topic)
  end

  def destroy
    @topic = @event.topics.find(params[:id])
    @topic.destroy
    respond_with(@topic)
  end

private

  def find_event
    @event = Event.find(params[:event_id])
  end

end
