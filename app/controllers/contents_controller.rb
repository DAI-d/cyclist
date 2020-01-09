class ContentsController < ApplicationController

def index
  @contents = Content.all
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
  @content = Content.find(params[:id])
end

private

  def content_params
    params.require(:content).permit(:title, :prefecture_id, :image, :route_url, :distance, :max_elevation, :total_elevation)
  end

end