class PokemonController < ApplicationController
    before_action :check_for_login
    def show
        @pokemon = Pokemon.find params[:id]
    end

    def new
        @pokemon = Pokemon.new
    end

    def create
        pokemon = Pokemon.create pokemon_params
        @current_user.pokemon << pokemon
        redirect_to edit_pokemon_path pokemon
    end

    def edit
        @pokemon = Pokemon.find params[:id]
    end

    def update
        @pokemon = Pokemon.find params[:id]
        if @pokemon.update pokemon_params
            redirect_to pokemon_path @pokemon
        else
            render :edit
        end
    end
    def destroy
        @pokemon = Pokemon.find params[:id]
        @pokemon.destroy
        redirect_to pokemon_index_path
    end

    private
    def pokemon_params
        params.require(:pokemon).permit(:name, :user_id, :species_id, :nature_id, :item_id, :ev_hp, :ev_attack, :ev_defense, :ev_spatk, :ev_spdef, :ev_speed, :iv_hp, :iv_attack, :iv_defense,:iv_spatk,:iv_spdef,:iv_speed, :ability_ids,:attack_ids=>[])
    end
end