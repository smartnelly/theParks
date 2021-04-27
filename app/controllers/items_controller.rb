class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find params[:id]
    @categories = Category.all
    @items = Item.all.order(:name)
  end

  def new
    @item= Item.new
  end

  def create
    @item = Item.new item_params
     if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @item.image = req["public_id"]
      @item.save
    end
    redirect_to @item
  end


  def edit
    @item = Item.find params[:id]
  end

  def update
    item = Item.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      item.image = req["public_id"]
    end
    item.update_attributes item_params
    item.save
    redirect_to item
  end

  def destroy
    @item = Item.find params[:id]
    @item.destroy
    redirect_to items_path
  end
  private

  def category_params
    params.require(:item).permit(:name, :price, :brand, :description, :images)
  end
end
