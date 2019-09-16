class Service < ApplicationRecord
    has_many :bookings, dependent: :destroy
    has_many :clients, through: :bookings

    validates :name, presence: true


end
# TODO write method to sum income from all booking for each service