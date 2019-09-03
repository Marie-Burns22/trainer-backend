class ClientSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email
end
