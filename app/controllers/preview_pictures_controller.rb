class PreviewPicturesController < ApplicationController
  def new
    @preview_picture = PreviewPicture.new
  end

  def create
    PreviewPicture.create(preview_picture_params)
    redirect_to '/pictures/new'
  end

  def preview_picture_params
    params.require(:preview_picture).permit(:image)
  end
end
