class CreatePetHistories < ActiveRecord::Migration[5.2]
  def change
    
    create_table :pet_histories do |t|
      t.float :weight
      t.float :height
      t.string :description
      t.references :pet, foreign_key: true
    end
  end
end
