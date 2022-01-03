class ProjectsController < ApplicationController
  before_action :authenticate_user!
  def index
    @projects = Project.all
    @project = Project.new
  end

  def new

  end
end
