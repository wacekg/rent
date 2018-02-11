class Car < ApplicationRecord
  mount_uploader :image, ImageUploader
  acts_as_paranoid
end
