class Booking < ApplicationRecord
    belongs_to :client
    belongs_to :service
    validates :client, :service, :date, :time, presence: true
end
