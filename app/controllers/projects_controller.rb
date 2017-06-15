class ProjectsController < ApplicationController
  before_action :validate_user
  before_action :set_project, only: [:show, :update, :destroy]

  # GET /projects
  def index
    @projects = Project.where 'user_id= ?', @current_user.id

    render json: @projects
  end

  # GET /projects/1
  def show
    render json: @project
  end

  # POST /projects
  def create
    @project = current_user.build_project(project_params)
    # @project = Project.new(project_params)

    if @project.save
      render json: @project, status: :created, location: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  def update
    # require 'pry'
    # binding.pry
    if @project.update(project_params)
      render json: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_project
    # require 'pry'
    # binding.pry
    @project = current_user.project(params[:id])
    # @project = Project.find(params[:id])
  end

  def validate_user
    set_current_user
  end

  # Only allow a trusted parameter "white list" through.
  def project_params
    params.require(:project).permit(:id, :title, :description).reject { |_, v| v.blank? }
  end
end
