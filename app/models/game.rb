class Game < ActiveRecord::Base
  attr_accessible :developer, :genre, :publisher, :release_date, :title
end
