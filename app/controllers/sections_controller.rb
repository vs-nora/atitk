class SectionsController < ApplicationController

  def index
    @sections = Section.all
  end

  def create
    section = Section.create!(section_params)
    redirect_to sections_path
  end

  private

  def section_params
    params.require(:section).permit(:name, :default)
  end
end