require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "validations" do
		it "is not valid without a post; a child to a parent Post" do
			comment_1 = Comment.new(body: 'my comment')
			
			expect(comment_1).to_not be_valid
		end
		it "is valid with a post; a child to a parent Post" do
			
		end
		it "is not valid without a user who makes the comment" do
			
		end
		it "it is valid with a user who makes the comment" do
			
		end
	end
end
