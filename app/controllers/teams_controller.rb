class TeamsController < ApplicationController
    def new
        @team = Team.new
    end
    def create
        team = Team.create team_params
        @current_user.teams << team
        redirect_to team
    end
    
    def show
        @team = Team.find params[:id]
    end


    private
    def team_params
        params.require(:team).permit(:name, :pokemon_ids=>[])
    end
end