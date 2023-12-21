class ProfileSectionsController < ApplicationController

  def create
    profile_section = ProfileSection.create!(profile_section_params)
    redirect_to profile_section
  end

  private

  def profile_section_params
    params.require(:profile_section).permit(:value, :section_id, :profile_id)
  end
end