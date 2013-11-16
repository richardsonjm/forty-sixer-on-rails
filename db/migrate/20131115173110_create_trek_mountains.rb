class CreateTrekMountains < ActiveRecord::Migration
  def change
    create_table :trek_mountains do |t|
      t.references :trek, index: true
      t.references :mountain, index: true

      t.timestamps
    end
  end
end
