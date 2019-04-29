class Post < ActiveRecord::Base
  validates :title, presence: true
  validates_length_of :content, minimum: 250
  validates_length_of :summary, maximum: 250
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
  validate :is_clickbait?

  def is_clickbait?
    clickbait = [/Won't Believe/i, /Secret/i, /Top \d+/i, /Guess/i]
    if clickbait.none?{|x| x.match self.title}
      errors.add(:title, "title must be clickbait")
    end
  end
end
