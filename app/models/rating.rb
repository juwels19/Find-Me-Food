class Rating < ApplicationRecord
    belongs_to :users
    belongs_to :restaurants

    validates :rating, presence: true
    validates :user_id, presence: true
    validates :restaurant_id, presence: true
end
