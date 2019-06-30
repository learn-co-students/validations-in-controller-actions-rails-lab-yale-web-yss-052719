class Post < ActiveRecord::Base
  validates :title, presence: true
  # error for missing title
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  # error for invalid categor
  validates :content, length: {minimum: 100}
  # error for too short content
end
