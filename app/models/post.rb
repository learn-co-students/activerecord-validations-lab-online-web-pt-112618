class Post < ActiveRecord::Base


  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction, Non-fiction) }
  #validates :title, inclusion: { in: %w("Won't Believe", "Secret", "Top [number]", "Guess") }
  validates :title, inclusion: { in: %w('Wont Believe', 'Secret', 'Top [number]', 'Guess'
      :message => "%{value} does not include keywords") }
end
