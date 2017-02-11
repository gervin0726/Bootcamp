class TimeEntriesController < ApplicationController
  def index
    if project.present?
      @time_entries = project.time_entries.last_month
    end
  end

  def new
    @time_entry = project.time_entries.new
  end

  def create
    @time_entry = project.time_entries.new(entry_params)
    if @time_entry.save
      redirect_to "/projects/#{project.id}/time_entries"
    else
      flash[:alert] = @time_entry.errors.full_messages
      render 'new'
    end
  end

  def edit
    time_entry
  end

  def update
    if time_entry.update(entry_params)
      render 'edit'
    else
      render 'edit'
    end
  end

  def destroy
    if time_entry.present?
      time_entry.destroy
      flash[:alert] = "Project destroy successfully"
    else
      flash[:alert] = "Project no exist"
    end
	 redirect_to "/projects/#{project.id}/time_entries"
  end

  private
    def project
      @project = Project.find_by(id: params[:project_id])
    end

    def time_entry
      @time_entry = project.time_entries.find_by(id: params[:id])
    end

    def entry_params
      params.require(:time_entry).permit(:hours, :minutes, :date, :comments)
    end

end
