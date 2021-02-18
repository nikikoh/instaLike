class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts,   dependent: :destroy
  has_one  :profile, dependent: :destroy

  def prepare_profile
    profile || build_profile
  end

  def avatar_image
    if profile&.image&.present?
      profile.image
    else
      'default-avatar.png'
    end
  end
end
