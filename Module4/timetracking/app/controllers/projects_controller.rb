class ProjectsController < ApplicationController
  def index
    @projects =  Project.order(created_at: :desc).limit(10)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(
      name: params[:project][:name],
      description: params[:project][:description]
    )
    if (@project.save)
      redirect_to "/projects/#{@project.id}"
    else
      render 'new'
    end
  end

  def show
    @project = Project.find_by(id: params[:id])
    unless @project.present?
      render 'no_project_found'
    end
  end

  def clean_old
    Project.clean_old()
  end
end
