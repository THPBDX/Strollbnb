class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.datetime :date
      t.integer :city_id
      t.integer :dog_id
      t.integer :dogsitter_id
      t.timestamps
    end
  end
end
