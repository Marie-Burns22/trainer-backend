class BookingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :day, :time, :client, :service
  belongs_to :client
  belongs_to :service
end
