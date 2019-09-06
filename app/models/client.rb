class Client < ApplicationRecord
    has_many :bookings
    has_many :services, through: :bookings

    validates :name, :email presence: true 
    validates :email, uniqueness: true
    
    has_secure_password
end


# TODO add method to total amount due for all services booked for each client