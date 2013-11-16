class CreateMountains < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.integer :rank
      t.string :name
      t.integer :height

      t.timestamps
    end
  end
end
