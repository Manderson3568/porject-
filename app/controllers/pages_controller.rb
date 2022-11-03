class PagesController < ApplicationController
  def home
    # feeds info to the sliders
    @pokemon = Pokemon.all.sample(5)
    @teams = Team.all.sample(5)
  end
end
