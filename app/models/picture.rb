class Picture < ActiveRecord::Base
  belongs_to :preview_picture
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
