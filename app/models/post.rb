class Post < ApplicationRecord
    validates :title,:presence => true, length:{maximum: 15}
    validates :content,:presence => true, length:{maximum: 100}
    validates :phrase,:presence => true, length:{maximum: 50}
    validates :author,:presence => true, length:{maximum: 15}
    validates :post_user_id,:presence => true

    belongs_to :user
    has_many :likes
    has_many :liked_users, through: :likes, source: :user

    def user
        return User.find_by(id: self.post_user_id)
    end
end
