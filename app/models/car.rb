class Car < ApplicationRecord
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader
  acts_as_paranoid
end
