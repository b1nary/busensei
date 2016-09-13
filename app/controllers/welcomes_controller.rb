class WelcomesController < ApplicationController
  def index
    @kanjis = Kanji.all
    @videos = Video.all
    @comics = Comic.all
  end
end
