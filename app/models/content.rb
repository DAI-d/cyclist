class Content < ApplicationRecord
  belongs_to :prefecture
  belongs_to :user
  mount_uploader :route_image, ImageUploader
  mount_uploader :landscape_image, ImageUploader
end
