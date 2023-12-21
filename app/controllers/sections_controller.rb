class SectionsController < ApplicationController

  def index
    @sections = Section.all
  end

  def edit
    @section = Section.find(params[:id])
  end

  def create
    Section.create!(section_params)
    redirect_to sections_path
  end

  def update
    Section.find(params[:id]).update!(section_params)
    redirect_to sections_path
  end

  private

  def section_params
    params.require(:section).permit(:name, :default)
  end
end