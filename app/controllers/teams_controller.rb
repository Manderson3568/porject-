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

    def index
        @teams = Team.all
    end
    def edit
        @team = Team.find params[:id]
    end
    def update
        team = Team.find params[:id]
        team.update team_params
        redirect_to team
    end 
    def destroy
        team = Team.find params[:id]
        team.destroy
    end

    private
    def team_params
        params.require(:team).permit(:name, :pokemon_ids=>[])
    end
end