class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
    @default_sections = Section.where(default: true)
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update!(profile_params)
    redirect_to @profile
  end

  def new
    @profile = Profile.new
  end

  def create
    profile = Profile.new(profile_params)
    profile.save!
    redirect_to profile
  end

  private

  def profile_params
    params.require(:profile).permit(
      :id,
      profile_sections_attributes: [:id, :value, :section_id]
    )
  end
end