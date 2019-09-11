class ClientSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email
  has_many :bookings, serializer: BookingSerializer
  has_many :services, through: :bookings, serializer: ServiceSerializer

end
