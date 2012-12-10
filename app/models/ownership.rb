class Ownership < ActiveRecord::Base
  attr_accessible :amount_paid, :game_platform_id, :game_retailer_id, :purchase_date, :user_id
  belongs_to :user
  belongs_to :game_platform
  belongs_to :game_retailer
end
