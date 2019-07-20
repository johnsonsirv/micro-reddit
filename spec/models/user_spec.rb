require 'rails_helper'

RSpec.describe User, :type => :model do
	context "validations" do
		it "is not valid without an email, username, password" do
			u = User.new
			
			expect(u).to_not be_valid
		end
		it "is valid with an email, username, password" do
			u = User.new(email: "johnsonsirv@gmail.com", username: "johnsonsirv", password: "1234")
			expect(u).to be_valid
		end
	end
end
