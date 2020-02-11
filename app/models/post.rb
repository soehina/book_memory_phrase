class Post < ApplicationRecord
    validates :title,:presence => true, length:{maximum: 15}
    validates :content,:presence => true, length:{maximum: 100}
    validates :phrase,:presence => true, length:{maximum: 50}
    validates :author,:presence => true, length:{maximum: 15}
    validates :user_id,:presence => true

    belongs_to :user

    def user
        return User.find_by(id: self.user_id)
    end
end
