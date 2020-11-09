class Activity < ApplicationRecord
    has_many :useractivities
    has_many :users, through: :useractivities
end
