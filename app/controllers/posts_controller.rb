class PostsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :show, :create, :edit, :update, :destroy]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

def index
  @posts = Post.all
  @random = Post.order("RAND()").limit(4)
end

def new
  @post = Post.new
end

def create
  @post = Post.new(post_params)
  if @post.save
    redirect_to root_path
  else
    render :new
  end
end

def show
  @like = Like.new
end

def edit
end

def update
  if @post.user == current_user
    @post.update(post_params)
    redirect_to post_path(@post)
  end
end

def destroy
  if @post.destroy
    redirect_to root_path
  end
end

private

  def post_params
    params.require(:post).permit(:title, :prefecture_id, :route_image, :landscape_image, :route_url, :distance, :max_elevation, :total_elevation).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end