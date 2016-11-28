class WelcomesController < ApplicationController
  def index
    @items = Item.order('RANDOM()').limit(1)
    @videos = Video.last(1)
    @illustrations = Illustration.last(1)
  end
end
