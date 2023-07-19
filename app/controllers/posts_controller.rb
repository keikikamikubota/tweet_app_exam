class PostsController < ApplicationController
  
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, falsh:notice "ブログを作成しました！"
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end


  def edit
  end

  private
  
  def post_params
    params.require(:post).permit(:title, :content)
  end
end