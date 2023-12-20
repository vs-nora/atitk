# == Schema Information
#
# Table name: sections
#
#  id      :integer          not null, primary key
#  default :boolean          default(FALSE), not null
#  name    :string
#
class Section < ApplicationRecord
  validates :name, presence: true
end
