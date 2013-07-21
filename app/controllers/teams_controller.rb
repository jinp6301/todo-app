class TeamsController < ApplicationController

  def new
    @team = Team.new
    @projects = Project.all

  end

  def create
    @team = Team.new(params[:team])
    if @team.save
      redirect_to team_url(@team)
    else
      render :new
    end

  end

  def show
    @team = Team.find(params[:id])

  end
end
