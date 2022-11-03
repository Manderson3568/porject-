class TeamsController < ApplicationController
    before_action :check_for_login
    def new
        @team = Team.new
    end
    def create
        @team = Team.new team_params
        if @team.save 
            @current_user.teams << @team
            redirect_to team_path @team
        else
            # raise "hell"
            render :new
        end
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
        if team.update team_params
            redirect_to team
        else 
            render :edit
        end
    end 
    def destroy
        team = Team.find params[:id]
        team.destroy
        redirect_to teams_path
    end
    private
    def team_params
        params.require(:team).permit(:name, :pokemon_ids=>[])
    end
end