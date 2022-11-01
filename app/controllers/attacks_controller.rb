class AttacksController < ApplicationController
    def index
        @attacks = Attack.all.sort
    end
    def show
        @attack = Attack.find(params[:id])
    end
end
