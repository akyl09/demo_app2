class User < ActiveRecord::Base
  attr_accessible :email, :nom
  validates :nom, :presence => true
  has_many :microposts
end
