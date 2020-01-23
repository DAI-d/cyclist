class ContentsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :show, :create, :edit, :update, :destroy]
  before_action :set_content, only: [:show, :edit, :update, :destroy]

def index
  @contents = Content.all
  @random = Content.order("RAND()").limit(4)
end

def new
  @content = Content.new
end

def create
  @content = Content.new(content_params)
  if @content.save
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
  if @content.user == current_user
    @content.update(content_params)
    redirect_to content_path(@content)
  end
end

def destroy
  if @content.destroy
    redirect_to root_path
  end
end

private

  def content_params
    params.require(:content).permit(:title, :prefecture_id, :route_image, :landscape_image, :route_url, :distance, :max_elevation, :total_elevation).merge(user_id: current_user.id)
  end

  def set_content
    @content = Content.find(params[:id])
  end

end