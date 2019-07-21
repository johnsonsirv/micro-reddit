require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "validations" do
		before do
			User.create(email: "johnsonsirv@gmail.com", username: "johnsonsirv", password: "876543210")
			User.create(email: "admin@micro-redit.com", username: "admin_micro", password: "admin1234")
		end
		it "is not valid without a post and user; a child to a parent Post" do
			comment_1 = Comment.new(body: 'my comment')
			
			expect(comment_1).to_not be_valid
		end
		it "is valid with a post and user; a child to a parent Post" do
		
			post_1 = Post.create(title: 'user 1 post title', body: 'user 1 post body', user_id: User.first.id)
			comment_1 = Comment.new(body: 'user 2 comment on user 1 post', post_id: post_1.id, user_id: User.second.id)
			
			expect(comment_1).to be_valid
		end
	end
end
