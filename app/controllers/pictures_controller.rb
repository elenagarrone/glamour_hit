class PicturesController < ApplicationController

  def new
    @preview_picture = PreviewPicture.find(params[:preview_picture_id])
    @picture = Picture.new
  end

  def create
    @preview_picture = PreviewPicture.find(params[:preview_picture_id])
    @picture = @preview_picture.create_picture(picture_params)
    if @picture.save
      redirect_to "/preview_pictures"
    else
      raise 'try again'
    end
  end

  def picture_params
    params.require(:picture).permit(:image)
  end

end
