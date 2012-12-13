class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :date_of_birth, :name, :telephone, :gender, :avatar
  
  validates :name, presence: true
  validates :email, uniqueness: true
  
  has_attached_file :avatar, :styles => { :medium => "200x200>", :thumb => "100x100>" }
  has_many :ownerships
  has_many :game_platforms, :through => :ownerships
  has_many :games, :through => :game_platforms
  has_many :platforms, :through => :game_platforms
end
