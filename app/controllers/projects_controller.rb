class ProjectsController < ApplicationController
  def index
    @projects = ["Project ABC", "Project DEF", "Project GHI", "Project JKL"]
  end
end
