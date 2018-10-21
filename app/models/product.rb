class Product < ApplicationRecord
  belongs_to :genre
  belongs_to :user
  # mount_uploader :image, ImageUploader
end
