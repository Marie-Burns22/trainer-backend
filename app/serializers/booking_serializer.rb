class BookingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :day, :time
  belongs_to :client, serializer: ClientSerializer
  belongs_to :service, serializer: ServiceSerializer
end
