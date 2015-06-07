class ProjectsController < ApplicationController
  def index
    @projects = Project.where(published: true).includes(:categories, :types)

    respond_to do |format|
      format.json { render json: @projects, include: [:categories, :types] }
    end
  end
end
