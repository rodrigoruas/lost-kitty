class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :species
      t.string :location
      t.string :name
      t.date :found_on
      t.boolean :collected, default: false

      t.timestamps
    end
  end
end
