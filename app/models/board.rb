# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Board < ActiveRecord::Base
  has_many :lists
  has_many :tasks, through: :lists
end
