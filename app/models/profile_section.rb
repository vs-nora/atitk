# == Schema Information
#
# Table name: profile_sections
#
#  id         :integer          not null, primary key
#  value      :text
#  profile_id :integer
#  section_id :integer
#
# Indexes
#
#  index_profile_sections_on_profile_id  (profile_id)
#  index_profile_sections_on_section_id  (section_id)
#
class ProfileSection < ApplicationRecord
  belongs_to :section
  belongs_to :profile

  delegate :name, to: :section

  validates :section_id, uniqueness: { scope: :profile_id }

  scope :defaults, -> { joins(:section).where(sections: { default: true }) }
  scope :not_defaults, -> { joins(:section).where(sections: { default: false }) }
end
