class Content < ApplicationRecord
  belongs_to :prefecture
  mount_uploader :image, ImageUploader
end
