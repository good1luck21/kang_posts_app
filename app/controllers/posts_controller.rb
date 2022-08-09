class PostsController < ApplicationController
  before_action :authenticate!
  def index
    @post = Post.new
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :content)
    end
end