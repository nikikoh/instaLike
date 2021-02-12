class Profile < ApplicationRecord
    belongs_to :user
    has_one_attached :image

    mount_uploader :image, ImageUploader

    validates :name, presence: true
    validates :email, presence: true
    validates :password, presence: true

end
