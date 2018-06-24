require "rails_helper"

RSpec.describe Idea, type: :model do
  it "has a name" do 
    idea = Idea.create(name: "My Awesome Idea Name") 			# creating a new idea 'instance'
    second_idea = Idea.create(name: "My Second Idea Name") 	# creating another new idea 'instance'
    expect(second_idea.name).to eq("My Second Idea Name") 		# this is our expectation
  end

  it "has a description" do 
  	idea = Idea.create(description: "My description")
  	second_idea = Idea.create(description: "second_description")
  	expect(second_idea.description).to eq("second_description")
  end 

  describe "associations" do
    it{ is_expected.to have_many(:comments) }
  end

  describe "validations" do
    it{ is_expected.to validate_presence_of :name }
    it{ is_expected.to validate_presence_of :description }
  end
end


