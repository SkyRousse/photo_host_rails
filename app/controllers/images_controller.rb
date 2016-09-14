class ImagesController < ApplicationController
  def index
    @images = Image.all
    render :index
  end

  def show
    @user = User.find(params[:user_id])
    @image = Image.find(params[:id])
  end

end
