class Post < ApplicationRecord
	validates :title, presence: true, length:  {minimum: 1}
	validates :content, presence: true
	has_many :comments, dependent: :destroy
end
