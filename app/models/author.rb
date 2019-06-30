class Author < ActiveRecord::Base
  validates :name, presence: true
  # error for missing name
  validates :email, uniqueness: true
  # error for missing a non-unique email
end
