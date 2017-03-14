require 'rails_helper'

RSpec.describe Post, type: :model do

	before(:each) do
		@post = Post.create!(title: "test name", description: "description")
	end

	describe "creation" do
		it "should have one item created after being created" do
			expect(Post.all.count).to eq(1)
		end
	end

	describe "validations" do 
		it "Should not let a post be created without a title" do
			@post.title = nil
			expect(@post).to_not be_valid
		end

		it "Should not let a post be created without decription" do
			@post.description = nil
			expect(@post).to_not be_valid
		end
	end

	#describe "length validations" do
		#it "should not allow the description longer than 1600 characters" do
			#@post.description = "k" * 1601
			#expect(@post).to_not be_valid
		#end
	#end
end

# to run test documentation code: $ bundle exec rspec --format documentation
# This gives a great format to waht the application needs to do.  