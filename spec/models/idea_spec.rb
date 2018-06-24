require "rails_helper"

RSpec.describe Idea, type: :model do
  it "has a name" do 
    idea = Idea.create!(name: "My Awesome Idea Name") 			# creating a new idea 'instance'
    second_idea = Idea.create!(name: "My Second Idea Name") 	# creating another new idea 'instance'
    expect(second_idea.name).to eq("My Second Idea Name") 		# this is our expectation
  end

  it "has a description" do 
  	description = Idea.create!(description: "My description")
  	another_description = Idea.create!(description: "Another description") 
  	expect(another_description.description).to eq("Another description")
  end 
end