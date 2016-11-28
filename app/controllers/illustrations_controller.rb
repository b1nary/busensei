class IllustrationsController < ApplicationController
  before_action :set_illustration, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :new, :create]

  def index
    @illustrations = Illustration.order("created_at DESC").page(params[:page]).per(10)
  end

  def show
  end

  def new
    @illustration = Illustration.new
  end

  def edit
  end

  def create
    @illustration = Illustration.new(illustration_params)

    if @illustration.save
      redirect_to @illustration, notice: 'Illustration was successfully created.'
    else
      render :new
    end
  end

  def update
    if @illustration.update(illustration_params)
      redirect_to @illustration, notice: 'Illustration was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @illustration.destroy
    redirect_to illustrations_url, notice: 'Illustration was successfully destroyed.'
  end

  private
    def set_illustration
      @illustration = Illustration.find(params[:id])
    end

    def illustration_params
      params.require(:illustration).permit(:title, :image, :blurb)
    end
end
