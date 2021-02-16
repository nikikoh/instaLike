class Profile < ApplicationRecord

    mount_uploader :image, ImageUploader
    
    belongs_to :user
    has_one_attached :image

    validates :name, presence: true
    validates :email, presence: true
    validates :password, presence: true

end
