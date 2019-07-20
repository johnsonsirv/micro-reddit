class User < ApplicationRecord
	validates :email, :username, :password, presence: true
	validates :username, :password, length: {in: 8..16}
	# validates :username, :password, uniqueness: true
	
	
end

# u = User.create(email: 'johnsonsirv@gmail.com', username: 'johnsonsirv', password: '1234')
# u_id = User.find_by_username('johnsonsirv').id
