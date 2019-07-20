require 'rails_helper'

RSpec.describe User, :type => :model do
	context "validations" do
		it "is not valid without an email, username, password" do
			u = User.new
			
			expect(u).to_not be_valid
		end
		it "is not valid with email, username and password of less than 8 character or more than 16 character" do
				u = User.new(email: "johnsonsirv@gmail.com", username: "johnsonsirv", password: "1234")
			
				expect(u).to_not be_valid
		end
		it "is valid with an email, username, password with more than 8 character and less than 16 character" do
			u = User.new(email: "johnsonsirv@gmail.com", username: "johnsonsirv", password: "12345678")
			
			expect(u).to be_valid
		end
		it "should have a unique email and username" do
			u1 = User.new(email: "johnsonsirv@gmail.com", username: "johnsonsirv", password: "12345678")
			u1.save
			
			u2 = User.new(email: "johnsonsirv@gmail.com", username: "johnsonsirv", password: "876543210")
			
			
			expect(u2.save).to be(false)
		end
	end
end
