class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
  end
  def new
    
  end
  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end
  def show
    @post = Post.find(params[:id])
  end
  def destroy
  end
  private
    def post_params
      params.require(:post).permit(:title, :content)
    end
end