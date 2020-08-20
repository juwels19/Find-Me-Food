class Restaurant < ApplicationRecord
    has_many :ratings

    validates :name, presence: true, uniqueness: true
    validates :city, presence: true
    validates :country, presence: true
    validates :genre, presence: true

    def avg_rating
        return 0 if ratings.count == 0
        sum = 0
        ratings.each do |rating|
            sum += rating.rating
        end
        return sum.to_f / ratings.count
    end
end
