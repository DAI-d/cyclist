class Content < ApplicationRecord
  belongs_to :prefecture
  mount_uploader :route_image, ImageUploader
end
