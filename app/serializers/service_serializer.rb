class ServiceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :category, :price, :request_method
  has_many :bookings, serializer: BookingSerializer
  has_many :clients, through: :bookings, serializer: ClientSerializer
end
