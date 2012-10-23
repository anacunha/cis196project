class VideoGameConsole < ActiveRecord::Base
  attr_accessible :manufacturer, :name, :release_date
  
  validates :name, presence: true
  validates :manufacturer, presence: true
end
