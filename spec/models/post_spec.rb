require 'rails_helper'

RSpec.describe Post, type: :model do
 	context "validations" do
		it "should not be valid with title length > 255" do 
			post_1 = Post.new(title: 'my title '* 300, body: '', user_id: nil)
			
			expect(post_1).to_not be_valid
		end
		it "should be valid with title length within 255" do 
			post_1 = Post.new(title: 'my title'*5, body: '', user_id: nil)
			
			expect(post_1).to be_valid
		end
		it "should be created by a valid user" do
		end
	end
end
