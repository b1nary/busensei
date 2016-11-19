class WelcomesController < ApplicationController
  def index
    @kanjis = Kanji.order('RANDOM()').limit(1)
    @videos = Video.last(1)
    @illustrations = Illustration.last(1)
  end
end
