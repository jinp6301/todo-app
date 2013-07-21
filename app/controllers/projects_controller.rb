class ProjectsController < ApplicationController

  def new
    @project = Project.new
    @teams = Team.all
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to project_url(@project)
    else
      render :new
    end

  end

  def show

    @project = Project.find(params[:id])

  end


end
