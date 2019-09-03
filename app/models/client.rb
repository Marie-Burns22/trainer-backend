class Client < ApplicationRecord
    quihas_many :bookings
    has_many :services, through: :bookings

    validates :name, :email, :password, presence: true 
    
    has_secure_password
end
