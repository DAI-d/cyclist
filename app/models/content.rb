class Content < ApplicationRecord
  belongs_to :prefecture
  belongs_to :user
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  mount_uploader :route_image, ImageUploader
  mount_uploader :landscape_image, ImageUploader
end
