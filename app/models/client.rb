class Client < ApplicationRecord
    has_many :pets


    def pets_user
        pets.pluck(:name)
    end
end
