class PreviewPicture < ActiveRecord::Base
  has_one :picture, dependent: :destroy
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
