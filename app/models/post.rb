class Post < ApplicationRecord
	belongs_to :user
	has_many :comments
	
	validates :title, length: { maximum: 255 }
	validates :user_id, presence: true
	
	
end
