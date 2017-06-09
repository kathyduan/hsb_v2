# == Schema Information
#
# Table name: restaurants
#
#  id                :integer          not null, primary key
#  cuisine           :string
#  address           :string
#  neighborhood_id  :integer
#  hsb_rating        :float
#  notes             :text
#  name :string
#  restaurant_name   :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Restaurant < ApplicationRecord

  belongs_to :neighborhood, :class_name => "Neighborhood"

  validates :cuisine, :address, :hsb_rating, presence: true
  validates :restaurant_name, :presence => true, :uniqueness => { :scope => :neighborhood_id }



end
