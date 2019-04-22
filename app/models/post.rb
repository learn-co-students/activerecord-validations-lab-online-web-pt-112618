class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 30 }
  validates :category, inclusion: { in: %w(Non-Fiction, Fiction)}
  validate :non_clickbait

  def non_clickbait
    if self.title && !self.title.include?("Won't Believe")
      errors.add(:title, "wrong title")
    end
  end
end
