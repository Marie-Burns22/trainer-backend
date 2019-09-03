class Client < ApplicationRecord
    has_many :services
    validates :name, :email, :password, presence: true 
    
    has_secure_password
end
