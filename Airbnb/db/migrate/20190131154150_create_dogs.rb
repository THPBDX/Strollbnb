class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.integer :city_id
      t.integer :dogsitter_id
      t.timestamps
    end
  end
end
