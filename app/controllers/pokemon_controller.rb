class PokemonController < ApplicationController
    def new
        @pokemon = Pokemon.new
    end
end