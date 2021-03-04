class Post < ApplicationRecord
  belongs_to :user

  has_many :images, dependent: :destroy

  # Postの保存と同時にimagesも保存される
  accepts_nested_attributes_for :images
end
