class User < ApplicationRecord
    has_secure_password
    validates :email, :uniqueness => true, :presence => true
    validates :username, :uniqueness => true, :presence => true
    has_many :pokemon
    has_many :teams
end