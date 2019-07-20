class Post < ApplicationRecord
	validates :title, length: { maximum: 255 }
	validates :user_id, presence: true
	
	
end
