class Booking < ApplicationRecord
    belongs_to :client
    belongs_to :service
    # Add validations for client, time, date, service after form is working
    
end
