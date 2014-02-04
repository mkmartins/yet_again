class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  scope :featured, -> { where(featured: true) }
  scope :ordered, -> {order('published_at DESC')}
  default_scope -> { where("published_at <= ?", Time.now ).order("published_at DESC")}
  attr_accessible :author, :body, :featured, :published_at, :title
  validates :author, :body, presence: true
  validates :title,
            length: {in: 2..65},
            presence: true
  validate :published_at_is_in_the_future

  private

    def published_at_is_in_the_future
      unless published_at >= Time.now
      errors.add(:published_at, "Published at must be in the future")
    end
  end



end
