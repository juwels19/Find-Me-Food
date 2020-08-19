class Restaurant < ApplicationRecord
    has_many :ratings

    validates :name, presence: true, uniqueness: true
    validates :city, presence: true
    validates :country, presence: true
    validates :genre, presence: true

    def avg_rating
         
    end
end
