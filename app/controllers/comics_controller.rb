class ComicsController < ApplicationController
  before_filter :set_comic, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:edit, :update, :destroy, :new, :create]

  def index
    @comics = Comic.order("created_at DESC").page(params[:page]).per(10)
  end

  def show
  end

  def new
    @comic = Comic.new
  end

  def edit
  end

  def create
    @comic = Comic.new(comic_params)

    if @comic.save
      redirect_to @comic, notice: 'Comic was successfully created.'
    else
      render :new
    end
  end

  def update
    if @comic.update(comic_params)
      redirect_to @comic, notice: 'Comic was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @comic.destroy
    redirect_to comics_url, notice: 'Comic was successfully destroyed.'
  end

  private
    def set_comic
      @comic = Comic.find(params[:id])
    end

    def comic_params
      params.require(:comic).permit(:title, :blurb)
    end
end
