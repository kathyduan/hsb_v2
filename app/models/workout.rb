# == Schema Information
#
# Table name: workouts
#
#  id               :integer          not null, primary key
#  workout_type     :string
#  address          :string
#  neighborhood_id :integer
#  hsb_rating       :float
#  notes            :text
#  studio_name      :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Workout < ApplicationRecord

  belongs_to :neighborhood, :class_name => "Neighborhood"

  validates :workout_type, :address, :hsb_rating, presence: true
  validates :studio_name, :presence => true, :uniqueness => { :scope => :neighborhood_id }


end
