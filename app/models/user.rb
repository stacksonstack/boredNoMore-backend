class User < ApplicationRecord
    has_many :user_activities
    has_many :activities, through: :user_activities

    has_secure_password

end
