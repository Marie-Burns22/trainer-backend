class BookingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :day, :time, :client, :service
end
