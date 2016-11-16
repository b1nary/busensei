class WelcomesController < ApplicationController
  def index
    @kanjis = Kanji.order('RANDOM()').limit(1)
    @videos = Video.all
    @comics = Comic.all
  end
end
