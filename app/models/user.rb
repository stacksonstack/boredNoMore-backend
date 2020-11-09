class User < ApplicationRecord
    has_many :useractivities
    has_many :activities, through: :useractivities
end
