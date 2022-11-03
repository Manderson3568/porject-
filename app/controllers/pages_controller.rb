class PagesController < ApplicationController
  def home
    @pokemon = Pokemon.all.sample(5)
    @teams = Team.all.sample(5)
  end
end
