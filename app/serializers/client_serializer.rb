class ClientSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :bookings
  has_many :bookings


end
