class Platform < ActiveRecord::Base
  attr_accessible :manufacturer, :name, :release_date, :image_url, :description
  
  validates :name, presence: true
  validates :manufacturer, presence: true
  
  has_many :game_platforms
  has_many :games, :through => :game_platforms
end
