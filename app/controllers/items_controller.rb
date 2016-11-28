class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all.order(:reading).page(params[:page])
  end

  def vocabulary
    @items = Item.all.search("category: 'Vocab'").order(:reading).page(params[:page])
  end

  def proverbs
    @items = Item.all.search("category: 'kotowaza'").order(:reading).page(params[:page])
  end

  def idioms
    @items = Item.all.search("category: 'yjjg'").order(:reading).page(params[:page])
  end

  def ateji
    @items = Item.all.search("category: 'ateji'").order(:reading).page(params[:page])
  end

  def show
  end

  def new
    @item = Item.new
  end

  def edit
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to @item, notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  def update
    if @item.update(item_params)
      redirect_to @item, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to items_url, notice: 'Item was successfully destroyed.'
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end
    def item_params
      params.require(:item).permit(:key, :word, :reading, :english, :notes, :synonyms, :opposites, :found_in, :japanese, :origin, :test, :level, :category)
    end
end
