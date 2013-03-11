class ItemsController < ApplicationController
  before_filter :find_event

  def index
    @items = @event.item.all
    respond_with(@items)
  end

  def show
    @item = @event.items.find(params[:id])
    respond_with(@item)
  end

  def new
    @item = @event.items.new
    respond_with(@item)
  end

  def edit
    @item = @event.items.find(params[:id])
  end

  def create
    @item = @event.items.new(params[:item])
    @item.user = current_user
    @item.save
    respond_with(@item, location: event_path(@event))
  end

  def update
    @item = @event.items.find(params[:id])
    @item.update_attributes(params[:item])
    respond_with(@item, location: event_path(@event))
  end

  def destroy
    @item = @event.items.find(params[:id])
    @item.destroy
    respond_with(@item, location: event_path(@event))
  end

  private

  def find_event
    @event = Event.find(params[:event_id])
  end

end
