class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :date_of_birth, :name, :telephone, :gender
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  
  has_and_belongs_to_many :games
end
