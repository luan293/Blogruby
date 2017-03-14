require "rails_helper"

RSpec.describe PostsController, :type => :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end




    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the posts into @posts" do
      post1, post2 = Post.create!(title: "aaa", content: "bbb"), Post.create!(title: "cccc", content: "dddd")
      get :index

      expect(assigns(:posts)).to match_array([post1, post2])
    end
  end



  describe "#create" do
    post = Post.create!(title: "aaa", content: "bbb")

    it "redirects to widget_url(@widget)" do
      expect(subject).to redirect_to(widget_url(assigns(:widget)))
    end

    it "redirects_to :action => :show" do
      expect(subject).to redirect_to :action => :show,
                                     :id => assigns(:widget).id
    end

    it "redirects_to(@widget)" do
      expect(subject).to redirect_to(assigns(:widget))
    end

    it "redirects_to /widgets/:id" do
      expect(subject).to redirect_to("/widgets/#{assigns(:widget).id}")
    end
  end
end


