class ContentsController < ApplicationController

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
  @content = Content.find(params[:id])
end

private

  def content_params
    params.require(:content).permit(:title, :prefecture_id, :route_image, :landscape_image, :route_url, :distance, :max_elevation, :total_elevation)
  end

end