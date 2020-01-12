class Content < ApplicationRecord
  belongs_to :prefecture
  mount_uploader :route_image, ImageUploader
  mount_uploader :landscape_image, ImageUploader
end
