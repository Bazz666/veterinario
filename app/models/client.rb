class Client < ApplicationRecord
    has_many :pets
    delegate :count, to: :pets, prefix: true


    def pets_user
        pets.pluck(:name)
    end
end
