require 'rails_helper'

RSpec.describe Comment, type: :model do
	it "has a comment author" do 
		comment = Comment.create!(user_name: "george", body: "comment body")
		expect(comment.user_name).to eq("george") 
	end 

	it "has a a body" do 
		comment = Comment.create!(user_name: "george", body: "comment body")
		expect(comment.body).to eq("comment body") 
	end 

	describe "validations" do
    	it{ is_expected.to validate_presence_of :user_name }
    	it{ is_expected.to validate_presence_of :body }

    	it { should validate_length_of(:body).is_at_least(5) }
    	it { should validate_length_of(:user_name).is_at_least(2) }

  end

end
