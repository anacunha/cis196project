class Game < ActiveRecord::Base
  attr_accessible :developer, :genre, :publisher, :release_date, :title, :platforms, :platform_ids, :image_url, :description
  has_many :game_platforms
  has_many :platforms, :through => :game_platforms
  
  validates :title, presence: true
  validates :platforms, presence: true

  scope :xbox360, joins(:platforms).where('name = ?', "Xbox 360")
  scope :playstation3, joins(:platforms).where('name = ?', "PlayStation 3")
  scope :wii, joins(:platforms).where('name = ?', "Wii")
  scope :others, joins(:platforms).where('name not in (?, ?, ?)', "Wii", "Xbox 360", "PlayStation 3").
                                            order('name ASC').
                                            order('title ASC')
end