class GameRetailer < ActiveRecord::Base
  attr_accessible :name, :website
  has_many :ownerships
  
  validates :name, presence: true
end
