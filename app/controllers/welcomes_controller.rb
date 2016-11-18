class WelcomesController < ApplicationController
  def index
    @kanjis = Kanji.order('RANDOM()').limit(1)
    @videos = Video.last(1)
    @comics = Comic.last(1)
  end
end
