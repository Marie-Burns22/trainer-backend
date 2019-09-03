class ServiceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :category, :price, :request_method
end
