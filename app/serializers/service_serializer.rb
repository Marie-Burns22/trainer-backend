class ServiceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :category, :price, :request_method
  has_many :bookings
  has_many :clients, through: :bookings
end
