require "rails_helper"

RSpec.describe Idea, type: :model do
  it "has a name" do 
    idea = Idea.create!(name: "My Awesome Idea Name", description: "My description") 
    second_idea = Idea.create!(name: "My Second Idea Name", description: "My second description")
    expect(idea.name).to eq("My Awesome Idea Name") 
  end

  it "has a description" do 
  	idea = Idea.create!(name: "My Awesome Idea Name", description: "My description")
  	second_idea = Idea.create(description: "second_description")
  	expect(idea.description).to eq("My description")
  end 

  describe "associations" do
    it{ is_expected.to have_many(:comments) }
  end

  describe "validations" do
    it{ is_expected.to validate_presence_of :name }
    it{ is_expected.to validate_presence_of :description }
  end
end


