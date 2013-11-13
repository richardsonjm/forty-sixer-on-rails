class CreateMountains < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.integer :rank
      t.string :name
      t.integer :height
      t.integer :trek_id

      t.timestamps
    end
  end
end
