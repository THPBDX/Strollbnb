class CreateDogsitters < ActiveRecord::Migration[5.2]
  def change
    create_table :dogsitters do |t|
      t.string :name
      t.integer :age
      t.integer :city_id
      t.integer :dog_id
      t.timestamps
    end
  end
end
