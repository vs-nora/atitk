# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Profile < ApplicationRecord
  has_many :profile_sections
  accepts_nested_attributes_for :profile_sections, allow_destroy: true
end
