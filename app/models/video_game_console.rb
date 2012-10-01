class VideoGameConsole < ActiveRecord::Base
  attr_accessible :manufacturer, :name, :release_date
end
