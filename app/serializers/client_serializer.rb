class ClientSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email
  has_many :bookings, serializer: BookingSerializer

end
