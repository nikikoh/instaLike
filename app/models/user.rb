class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # アバターの画像
  has_one :profile
  

  def avatar_image
    if profile&.image&.attached?
      profile.image
    else
      'default-avatar.png'
    end
  end

  def prepare_profile
    profile || build_profile
  end
end
