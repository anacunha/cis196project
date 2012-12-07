class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :date_of_birth, :name, :telephone, :gender, :avatar
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_and_belongs_to_many :games
end
