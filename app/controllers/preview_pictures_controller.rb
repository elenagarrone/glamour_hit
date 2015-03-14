class PreviewPicturesController < ApplicationController

  def new
    @preview_picture = PreviewPicture.new
  end

  def create
    @preview_picture = PreviewPicture.create(preview_picture_params)
    id = @preview_picture.id
    redirect_to "/preview_pictures/#{id}/pictures/new"
  end

  def show
    @preview_picture = PreviewPicture.find(params[:id])
  end

  def preview_picture_params
    params.require(:preview_picture).permit(:image)
  end
end
