class Service < ApplicationRecord
    has_many :clients

    validates :name, presence: true
    validates_inclusion_of :request_method, :in => ['Email us', 'Book', 'Request' ]

end
