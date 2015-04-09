class PicturesController < ApplicationController

  def new
    @preview_picture = PreviewPicture.find(params[:preview_picture_id])
    @picture = Picture.new
  end

  def create
    @preview_picture = PreviewPicture.find(params[:preview_picture_id])
    @picture = @preview_picture.create_picture(picture_params)
    if @picture.save
      redirect_to "/gallery"
    else
      raise 'try again'
    end
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    @picture.update(picture_params)
    id = @picture.id
    # redirect_to "/pictures/#{id}/edit"
    redirect_to preview_pictures_path
  end

  def picture_params
    params.require(:picture).permit(:image)
  end

end