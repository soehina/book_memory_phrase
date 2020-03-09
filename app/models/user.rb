class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy, foreign_key: :post_user_id
  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post

  mount_uploader :image, ImageUploader
end
