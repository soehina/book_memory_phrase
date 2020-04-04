class Post < ApplicationRecord
    validates :title,:presence => true, length:{maximum: 15}
    validates :content,:presence => true, length:{maximum: 120}
    validates :phrase,:presence => true, length:{maximum: 50}
    validates :author,:presence => true, length:{maximum: 15}
    validates :post_user_id,:presence => true

    belongs_to :user, optional: true
    has_many :likes, dependent: :destroy
    has_many :users, through: :likes

    def user
        return User.find_by(id: self.post_user_id)
    end

    def liked_by?(user)
        likes.where(user_id: user.id).exists?
    end
end
