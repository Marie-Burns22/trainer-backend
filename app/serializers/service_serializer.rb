class ServiceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :category, :price
  has_many :bookings, serializer: BookingSerializer
  has_many :clients, through: :bookings, serializer: ClientSerializer
end
