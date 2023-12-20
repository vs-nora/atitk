# == Schema Information
#
# Table name: profiles
#
#  id :integer          not null, primary key
#
class Profile < ApplicationRecord
  has_many :profile_sections
end
