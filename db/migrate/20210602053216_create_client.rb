class CreateClient < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :telephone
      t.email :email
      t.references :pet, foreign_key: true
    end
  end
end
