class ImagesController < ApplicationController
  def index
    @images = Image.order('created_at')
  end

  def new
    @image = Image.new
  end

  def create

    @image = Image.new(image_params)
    @image.user = current_user
    binding.pry
    if @image.save
      flash[:notice] = "Image uploaded successfully"
      render :new
    else
      flash[:alert] = "There was a problem, please try again"
      render :new
    end
  end

  def show
    @user = User.find(params[:user_id])
    @image = Image.find(params[:id])
  end

  private

  def image_params
    params.require(:image).permit(:image, :title, :user_id)
  end

end
