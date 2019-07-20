class Post < ApplicationRecord
	validates :title, length: { maximum: 255 }
end
