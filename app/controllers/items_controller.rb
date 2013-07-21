class ItemsController < ApplicationController

  def new
    @item = Item.new
    @projects = Project.all
  end

  def create
    @item = Item.new(params[:item])
    if @item.save
      redirect_to item_url(@item)
    else
      render :new
    end

  end

  def show
    @item = Item.find(params[:id])
  end

  def index

    @project = Project.find(params[:project_id])

  end

  def batch_update
    p "ITEMS"

    params[:items].each do |item|
      @item = Item.find(item[0])
      @item.completed = item[1][:completed] 
      @item.save
    end
    redirect_to :back

  end
end
