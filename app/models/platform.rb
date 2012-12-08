class Platform < ActiveRecord::Base
  attr_accessible :manufacturer, :name, :release_date
  
  validates :name, presence: true
  validates :manufacturer, presence: true
  
  has_and_belongs_to_many :games
end
