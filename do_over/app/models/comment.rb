class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :author, :message

  validates :author, presence: true

  before_validation :set_author_to_anonymous_if_blank

  private

  def set_author_to_anonymous_if_blank
    if self.author.blank?
       self.author = "Anonymous"
    end
  end
  
  
end
