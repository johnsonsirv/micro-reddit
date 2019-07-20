class Post < ApplicationRecord
	belongs_to :user
	
	validates :title, length: { maximum: 255 }
	validates :user_id, presence: true
	
	
end
