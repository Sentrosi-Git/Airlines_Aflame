class Flight < ApplicationRecord
  has_many :users, through: :reservations
  belongs_to :plane
end
