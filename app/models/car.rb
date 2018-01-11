class Car < ApplicationRecord
  mount_uploader :image, ImageUploader
end
