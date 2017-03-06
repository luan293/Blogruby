class PostsController < ApplicationController
  load_and_authorize_resource 
  #before_action :authenticate_user!
  def index
    #skip_check_authorizetion
    @posts = Post.all.page(params[:page]).per(4)
    @search = Post.search(params[:q])
    @posts1 = @search.result.page(params[:page]).per(4)
    #authorize! :read, @posts
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  
  #def search
  #  @result = @search.result.includes(:name).page(params[:page]).per(4)
  #end
  
  private
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
