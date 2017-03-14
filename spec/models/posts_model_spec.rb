require 'rails_helper'

RSpec.describe Comment, type: :model do

  
  context "with 2 or more comments" do
    it "orders them in reverse chronologically" do
      post = Post.create!(title: "cc", content: "dd")
      comment1 = post.comments.create!(name:'mr.a', content: "first comment")
      comment2 = post.comments.create!(name:'mr.b',content: "second comment")
      expect(post.reload.comments).to eq([comment2, comment1])
    end
  end
end