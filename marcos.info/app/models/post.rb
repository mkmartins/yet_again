class Post < ActiveRecord::Base
  scope :cool, -> {where(cool: true)}
  
  attr_accessible :author, :body, :cool, :date, :title
  validates :author, presence: true
end
