class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true

    def self.find_by_username username
        if User.find_by(username: username)
            return User.find_by(username: username)
        else
            return nil
        end
    end
    
end
