class Post < ApplicationRecord
  validates :title, presence: true, length:  {minimum: 5}
  validates :content, presence: true
  has_many :comments, dependent: :destroy
  belongs_to :user
end
