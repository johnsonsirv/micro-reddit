class User < ApplicationRecord
	validates :email, :username, :password, presence: true
	validates :username, :password, length: {in: 8..16}
	validates :username, :password, uniqueness: true
end
