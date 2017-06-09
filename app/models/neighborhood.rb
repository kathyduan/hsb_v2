# == Schema Information
#
# Table name: neighborhoods
#
#  id                :integer          not null, primary key
#  workouts_id       :integer
#  notes             :text
#  name :string
#  restaurants_id    :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Neighborhood < ApplicationRecord

  has_many :restaurants, :foreign_key => "neighborhood_id", :dependent => :destroy
  has_many :workouts, :foreign_key => "neighborhood_id", :dependent => :destroy

  validates :name, uniqueness: true

end
