class Disc < ActiveRecord::Base
  attr_accessible :name, :manufacturer, :throw_type, :flight_difficulty, :flight_speed, :flight_glide, :flight_turn, :flight_fade
  has_many :disc_editions

  validates :name, :presence => true
end
