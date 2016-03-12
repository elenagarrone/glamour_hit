class PreviewPicturesController < ApplicationController

  def new
    @preview_picture = PreviewPicture.new
  end

  def create
    @preview_picture = PreviewPicture.create(preview_picture_params)
    id = @preview_picture.id
    redirect_to "/gallery/#{id}/pictures/new"
  end

  def show
    @preview_picture = PreviewPicture.find(params[:id])
  end

  def destroy
    @preview_picture = PreviewPicture.find(params[:id])
    @preview_picture.destroy
    if @preview_picture.destroyed?
        redirect_to preview_pictures_path
    else
        raise "Something went wrong"
    end
  end

  def edit
    @preview_picture = PreviewPicture.find(params[:id])
  end

  def update
    @preview_picture = PreviewPicture.find(params[:id])
    @preview_picture.update(preview_picture_params)
    id = @preview_picture.id
    redirect_to "/pictures/#{id}/edit"
    # redirect_to preview_pictures_path
  end

  def preview_picture_params
    params.require(:preview_picture).permit(:image)
  end
end
