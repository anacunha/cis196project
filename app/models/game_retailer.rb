class GameRetailer < ActiveRecord::Base
  attr_accessible :name, :website
  has_many :ownerships
end
