require 'rails_helper'

RSpec.describe Post, type: :model do
	
 	context "validations" do
		before do
			User.create(email: "johnsonsirv@gmail.com", username: "johnsonsirv", password: "876543210")
		end
		it "should not be valid without a valid user_id" do
			post_1 = Post.new(title: 'my title', body: 'my body', user_id: nil)
			
			expect(post_1).to_not be_valid
		end
		it "should not be valid with title length > 255" do 
			post_1 = Post.new(title: 'my title '* 300, body: '', user_id: User.first.id)
			
			expect(post_1).to_not be_valid
		end
		it "should be valid with title length within 255" do
			post_1 = User.first.posts.build(title: 'my title', body: 'my body')
			
			expect(post_1).to be_valid
		end
		it "belongs to a user" do
			assoc = Post.reflect_on_association(:user)
			expect(assoc.macro).to eq :belongs_to
		end
	end
end
