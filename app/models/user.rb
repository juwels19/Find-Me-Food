class User < ApplicationRecord
  has_secure_password
  has_many :ratings
  has_many :restaurants

  validates :email, presence: true, uniqueness: true
  validates :city, presence: true

  def num_ratings
    return ratings.count
  end
end
