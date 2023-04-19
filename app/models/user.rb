class User < ApplicationRecord
Joe
    has secure password

    has_secure_password

    validates :username, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password_digest, presence: true
main
end
