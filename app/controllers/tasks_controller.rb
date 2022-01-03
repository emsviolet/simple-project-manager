class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project

  def index
    @tasks = Task.all
  end

  private

  def set_project
    @project = current_user.projects.find(params[:project_id])
  end
end
