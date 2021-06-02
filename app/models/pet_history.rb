class PetHistory < ApplicationRecord
    belongs_to :pet
    
    def pet_names
        pets.pluck(:name)
    end
end
