class User < ActiveRecord::Base
  attr_accessible :date_of_birth, :email, :name, :telephone, :gender
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
