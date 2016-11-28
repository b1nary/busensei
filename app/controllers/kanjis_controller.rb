class KanjisController < ApplicationController
  before_action :set_kanji, only: [:show, :edit, :update, :destroy]

  def index
    @kanjis = Kanji.all.order(reading: :asc).page(params[:page]).per(50)
  end

  def proverbs
    @kanjis = Kanji.all.search("category: 'Vocab'").page(params[:page]).per(50)
  end

  def kotowaza
    @kanjis = Kanji.all.search("category: 'kotowaza'").page(params[:page]).per(50)
  end

  def show
  end

  def new
    @kanji = Kanji.new
  end

  def edit
  end

  def create
    @kanji = Kanji.new(kanji_params)

    if @kanji.save
      redirect_to @kanji, notice: 'Kanji was successfully created.'
    else
      render :new
    end
  end

  def update
    if @kanji.update(kanji_params)
      redirect_to @kanji, notice: 'Kanji was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @kanji.destroy
    redirect_to kanjis_url, notice: 'Kanji was successfully destroyed.'
  end

  private
    def set_kanji
      @kanji = Kanji.find(params[:id])
    end
    def kanji_params
      params.require(:kanji).permit(:key, :word, :reading, :english, :notes, :synonyms, :opposites, :found_in, :japanese, :origin, :test, :level, :category)
    end
end
