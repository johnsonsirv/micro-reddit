class User < ApplicationRecord
	has_many :posts
	has_many :comments
	
	validates :email, :username, :password, presence: true
	validates :username, :password, length: {in: 8..16}
	validates :email, :username, uniqueness: true
	
	
end

# u_id = User.find_by_username('johnsonsirv').id
